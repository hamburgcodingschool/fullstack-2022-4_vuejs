<template>
    <h2 class="title">Our top 3 recipes for February</h2>
    <div class="columns">
      <div class="column">
        <Card />
      </div>
      <div class="column">
        <Card />
      </div>
      <div class="column">
        <Card />
      </div>
    </div>
</template>

<script>
import Card from "./Card.vue";

export default {
  components: {
    Card
  }
}
</script>