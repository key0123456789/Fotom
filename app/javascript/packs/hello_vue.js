import Vue from 'vue'
import Test from '../test.vue'

document.addEventListener('DOMContentLoaded', () => {
  const test = new Vue({
    render: h => h(Test)
  }).$mount()
  document.body.appendChild(test.$el)

  console.log(test)
})
