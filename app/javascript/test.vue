<template>
  <div id="test">
    <p>{{ message2 }}</p>
    <a :[attribute]="url">Google</a>
    <button v-on:click="countUp()">カウントアップ</button>
  </div>
</template>

<script>
export default {
  data: function() {
    return {
      message2: "自分で追加したテストメッセージ",
      url: "https://google.com",
      attribute: 'href'
    }
  },
  methods: {
    countUp: function() {
      this.number += 1
    }
  }

}
</script>
