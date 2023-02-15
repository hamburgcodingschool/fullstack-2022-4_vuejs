<template>
    <div>
      <ListOfFruit />
      <FruitSelector />
    </div>
</template>

<script>
import ListOfFruit from "./ListOfFruit.vue";
import FruitSelector from "./FruitSeletor.vue";

export default {
  components: {
    ListOfFruit,
    FruitSelector
  }
}
</script>

<style scoped>
div {
  background-color: pink;
  padding: 20px;
}
</style>
