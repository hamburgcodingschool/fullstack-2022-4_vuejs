<template>
    
     <div v-if="isSelected">
      <img :src="pokemonInfo.sprites.other['official-artwork'].front_default">
      <h3>name: {{ pokemonInfo.name }}</h3>
      <p>weight: {{ pokemonInfo.weight }}</p>
    </div>
    <div v-else>
        Please select a Pokemon
    </div>
    <p>NOW INSIDE SAME URL: {{ url }}</p>
</template>

<script>
export default {
    props: {
        url: String
    },
    data: function() {
        return {
            isSelected: false,
            pokemonInfo: {}
        }
    },
    watch: {
        async url() {
            const response = await fetch(this.url);
            const result = await response.json();
            this.pokemonInfo = result;
            this.isSelected = true;
        }
    }
}
</script>