<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: 'app'
}
</script>
<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #fff;
  width: 100%;
  height: 100%;
  background: url("../static/images/back2.jpg")no-repeat;
  -webkit-background-size: cover;
  background-size: cover;
  background-position: center center;
  min-height: 500px;
}
</style>
