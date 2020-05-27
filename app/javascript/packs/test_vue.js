import Vue from 'vue'
import App from '../app.vue'
import Test from '../test.vue'


document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)

  const test = new Vue({
    render: h => h(Test)
  }).$mount()
  document.body.appendChild(test.$el)

})
