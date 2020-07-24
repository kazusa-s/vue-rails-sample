import Vue from 'vue/dist/vue.esm'
import App from '../components/app.vue'

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#root',
    data: {
      message: "Welcome to Rails Vue Sample"
    },
    components: { App }
  })
})
