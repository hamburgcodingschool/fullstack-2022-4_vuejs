// THE HTML
// THE CSS
// THE JS

<template>
  <h1>Hello I am a website</h1>
  <div id="fruitWrapper">
    <FruitWrapper />
    <FruitWrapper />
  </div>
  
</template>

<script>
import FruitWrapper from "./components/FruitWrapper.vue";

export default {
  components: {
    FruitWrapper
  }
}
</script>

<style scoped>
h1 {
  color: burlywood;
}

#fruitWrapper {
  display: flex;
  gap: 40px;
}
</style>