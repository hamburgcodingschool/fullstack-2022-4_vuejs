<template>
  <h1>Hi</h1>
  <button @click="handleGoFetch">GOTTA FETCH'EM ALL!</button>

  <ul>
    <li v-for="pokemon in pokemonList">{{ pokemon.name }}</li>
  </ul>
</template>

<script>
import fetchData from "./services/fetchData.js";

export default {
  data: function() {
    return {
      pokemonList: []
    }
  },
  methods: {
    async handleGoFetch() {
      this.pokemonList = await fetchData.fetchJustOne(25);
    }
  }
}
</script>