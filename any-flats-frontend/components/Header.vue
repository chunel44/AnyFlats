<template>
  <b-navbar toggleable="md" type="dark">
    <b-navbar-toggle
      class="font-weight-bold"
      target="nav-collapse"
    ></b-navbar-toggle>

    <b-collapse id="nav-collapse" is-nav>
      <ul class="nav navbar-nav mx-auto">
        <li class="nav-item sd">Any Flats Encuesta</li>
      </ul>

      <!-- Right aligned nav items -->
      <b-navbar-nav>
        <b-nav-item-dropdown right>
          <!-- Using 'button-content' slot -->
          <template #button-content>
            <em>{{ user.email }}</em>
          </template>
          <b-dropdown-item @click="logout">Cerrar Sesion</b-dropdown-item>
        </b-nav-item-dropdown>
      </b-navbar-nav>
    </b-collapse>
  </b-navbar>
</template>

<script>
import axios from "~/plugins/axios";
export default {
  data() {
    return {
      user: {},
    };
  },
  async fetch() {
    const data = localStorage.getItem("user");
    this.user = JSON.parse(data);
    const auth = localStorage.getItem("authToken");
    this.token = JSON.parse(auth);
  },
  methods: {
    async logout() {
      const { data } = await axios.post(
        "/logout",
        {
          token: this.token.accessToken,
        },
        {
          headers: {
            Authorization: "bearer " + this.token.accessToken,
          },
        }
      );
      if(data.success){
        localStorage.clear();
        this.$router.go("/login");
      }else{
        localStorage.clear();
        this.$router.go("/login");
      }
    },
  },
};
</script>

<style lang="scss">
.navbar {
  background-color: #304f90;
  padding: 0.5rem 2rem;
}
.nav-item.sd {
  color: rgba(255, 255, 255, 1);
  font-size: 1.4em;
}
.navbar-dark .navbar-nav .nav-link {
  color: rgba(255, 255, 255, 1);
  font-size: 0.9em;
  &:hover {
    color: rgba(255, 255, 255, 1);
  }
}
</style>
