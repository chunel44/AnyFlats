<template>
  <div class="limiter">
    <div class="container-login100">
      <div class="wrap-login100">
        <div class="login100-pic js-tilt" data-tilt>
          <img src="/any_flats_logo.png" alt="IMG" />
        </div>

        <div class="login100-form validate-form">
          <span class="login100-form-title"> Panel Login </span>

          <div
            class="wrap-input100 validate-input"
            data-validate="Valid email is required: ex@abc.xyz"
          >
            <input
              class="input100"
              type="text"
              name="email"
              v-model="email"
              placeholder="Email"
              @keyup.enter="postLogin()"
            />
            <span class="focus-input100"></span>
            <span class="symbol-input100">
              <i class="fa fa-envelope" aria-hidden="true"></i>
            </span>
          </div>

          <div
            class="wrap-input100 validate-input"
            data-validate="Password is required"
          >
            <input
              class="input100"
              type="password"
              v-model="password"
              name="pass"
              placeholder="Password"
              @keyup.enter="postLogin()"
            />
            <span class="focus-input100"></span>
            <span class="symbol-input100">
              <i class="fa fa-lock" aria-hidden="true"></i>
            </span>
          </div>

          <div class="container-login100-form-btn">
            <button @click="postLogin()" @keyup.enter="postLogin()" class="login100-form-btn">
              Login
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Cookies from 'js-cookie';
import style from "~/assets/css/main.css";
import axios from "~/plugins/axios";
export default {
  middleware: "notAuthenticated",
  computed: {
    state() {
      return this.email.length >= 4;
    },
    head() {
    return {
      title: "AnyFlasts - Login"
    };
  },
    style() {
      return style;
    },
  },
  data() {
    return {
      email: "",
      password: "",
    };
  },
  methods: {
    async postLogin() {
      const { data } = await axios.post(
        `/login`,
        {
          email: this.email,
          password: this.password,
        },
        {
          headers: {
            "Content-Type": "application/json",
          },
        }
      );
      if (data.token) {
        const token = data.token;
        const user = data.user;
        console.log(user);
        if (user) {
          
          const auth = {
            accessToken: token,
          };
          this.storeToken(auth, user);
          this.$router.go("/Dashboard");
        }
      } else {
        this.$bvToast.toast("Password o Email son incorrectos", {
          title: `Login`,
          variant: "info",
          autoHideDelay: 3000,
          solid: true,
        });
      }
    },
    storeToken(token, user){
      if(process.client){
          localStorage.setItem("authToken", JSON.stringify(token));
          localStorage.setItem("user", JSON.stringify(user));
      }
    }
  },
};
</script>
