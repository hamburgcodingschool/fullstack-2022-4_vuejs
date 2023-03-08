<template>
    <h2 class="title">Our top 3 recipes for February</h2>
    <div class="columns">
      <template v-for="recipe in top3Recipes">
        <div class="column">
          <Card :recipe="recipe" />
        </div>
      </template>  
    </div>
</template>

<script>
import Card from "./Card.vue";

export default {
  components: {
    Card
  },
  data: function() {
    return {
      top3Recipes: []
    }
  },
  async mounted() {
    const response = await fetch("http://localhost:3000/top3recipes");
    const result = await response.json();
    this.top3Recipes = result;
  }
}
</script>