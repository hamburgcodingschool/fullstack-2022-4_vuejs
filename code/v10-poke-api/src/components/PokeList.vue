<template>
    <div>
        <div v-if="pokemonList.length === 0">Loading...</div>
        <ul v-else>
            <li v-for="(pokemon, index) in pokemonList" :key="index">
                <a href="#" @click="handleClick" :data-url="pokemon.url">{{ pokemon.name }}</a>
            </li>
        </ul>
    </div>
</template>

<script>


export default {
    data: function() {
        return {
            pokemonList: []
        }
    },
    emits: ["pokemonClicked"],
    async mounted() {
        const response = await fetch("https://pokeapi.co/api/v2/pokemon");
        const result = await response.json();
        this.pokemonList = result.results;
    },
    methods: {
        handleClick(event) {
            event.preventDefault();
            this.$emit("pokemonClicked", event.target.dataset.url);
        }
    }
}
</script>
