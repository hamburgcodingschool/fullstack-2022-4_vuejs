<template>
  <p>URL: {{ selectedURL }}</p>
  <div class="flexContainer">
    <PokeList @pokemonClicked="handlePokemonClicked" />
    <PokeDetails :url="selectedURL" />
   </div>
</template>

<script>
import PokeList from "./components/PokeList.vue";
import PokeDetails from "./components/PokeDetails.vue";

export default {
  components: {
    PokeList,
    PokeDetails
  },
  data: function() {
    return {
      selectedURL: ""
    }
  },
  methods: {
    handlePokemonClicked(value) {
      this.selectedURL = value
    }
  }
}
</script>

<style scoped>
.flexContainer {
  display: flex;
  gap: 30px;
}
</style>