<template>
  <div>
    <Header />
    <b-container class="container_table">
      <b-row style="margin: 1rem 0px; justify-content: space-between">
        <div class="description found">Total: {{ this.totalRows }}</div>
        <div class="has-search">
          <span class="fa fa-search form-control-feedback"></span>
          <input
            type="text"
            v-model="search"
            class="form-control"
            placeholder="Search"
          />
        </div>
        <download-csv
          class="btn btn-outline-primary"
          :data="items"
          name="any_flats.csv"
        >
          <i class="fa fa-download" aria-hidden="true"></i>
          Descargar Excel
        </download-csv>
      </b-row>
      <b-row>
        <b-col>
          <b-table
            striped
            hover
            responsive
            :items="filteredData"
            :fields="fields"
            :per-page="perPage"
            :current-page="currentPage"
            :sort-by.sync="sortBy"
            :sort-desc.sync="sortDesc"
          ></b-table>
          <b-pagination
            :total-rows="totalRows"
            v-model="currentPage"
            :per-page="perPage"
            class="mb-4"
            aria-controls="my-table"
          ></b-pagination>
        </b-col>
      </b-row>
    </b-container>
  </div>
</template>

<script>
import axios from "~/plugins/axios";
import Swal from "sweetalert2";

export default {
  middleware: "authenticated",
  head() {
    return {
      title: "AnyFlasts - Home",
    };
  },
  data() {
    return {
      token: "",
      search: "",
      user: {},
      items: [],
      perPage: 10,
      currentPage: 1,
      sortBy: "name",
      sortDesc: false,
      pageOptions: [
        5,
        10,
        20,
        50,
        {
          value: Number.MAX_SAFE_INTEGER,
          text: "show all",
        },
      ],
      items_length: 0,
      fields: ["id", "email", "fecha_de_nacimiento", "tipo", "fecha"],
    };
  },
  async fetch() {
    const user = localStorage.getItem("user");
    const auth = localStorage.getItem("authToken");
    this.token = JSON.parse(auth);
    this.user = JSON.parse(user);
    const size = await axios.get("/comentaries-size");
    this.items_length = size.data;
    const itmStorage = JSON.parse(localStorage.getItem("items"));
    if (itmStorage === null) {
      try {
        const { data } = await axios.get("/comentaries", {
          headers: {
            Authorization: "bearer " + this.token.accessToken,
          },
        });
        data.map((x) => {
          x.fecha = this.$moment(x.created_at).format("LLL");
          x.fecha_de_nacimiento = this.$moment(x.fecha_de_nacimiento).format("LL");
          delete x.created_at;
        });
        localStorage.setItem("items", JSON.stringify(data));
        this.items = data;
      } catch (error) {
        if (error.response.status === 500) {
          localStorage.clear();
        }
      }
    } else {
      
      if (this.items_length > itmStorage.length) {
        try {
          localStorage.removeItem("items");
          const { data } = await axios.get("/comentaries", {
            headers: {
              Authorization: "bearer " + this.token.accessToken,
            },
          });
          data.map((x) => {
            x.fecha = this.$moment(x.created_at).format("LLL");
            x.fecha_de_nacimiento = this.$moment(x.fecha_de_nacimiento).format("LL");
            delete x.created_at;
          });
          localStorage.setItem("items", JSON.stringify(data));
          this.items = data;
        } catch (error) {
          if (error.response.status === 500) {
            localStorage.clear();
          }
        }
      }else{
        this.items = JSON.parse(localStorage.getItem("items"));
      }
    }
  },
  computed: {
    totalRows() {
      return this.items.length;
    },
    filteredData() {
      return this.items.filter(
        (x) =>
          x.email.toLowerCase().indexOf(this.search.toLowerCase()) >= 0 ||
          x.tipo.toLowerCase().indexOf(this.search.toLowerCase()) >= 0
      );
    },
  },
};
</script>

<style lang="scss">
body{
  background-color: #f9f9f9;
}
.container_table {
  margin-top: 2rem;
}
.has-search .form-control {
  padding-left: 2.375rem;
}
.has-search .form-control-feedback {
  position: absolute;
  z-index: 2;
  display: block;
  width: 2.375rem;
  height: 2.375rem;
  line-height: 2.375rem;
  text-align: center;
  pointer-events: none;
  color: #aaa;
}
</style>
