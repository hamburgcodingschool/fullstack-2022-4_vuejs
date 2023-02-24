<template>
    <button @click="clickHandler" :style="{ backgroundColor: this.color }">{{ text }}</button>
</template>

<script>


export default {
    props: {
        text: String,
        color: String
    },
    emits: ["myClick"],
    methods: {
        clickHandler(event) {
            this.$emit("myClick", event);
        }
    }
}
</script>

<style scoped>
button {
    border: solid 3px black;
    background-color: aquamarine;
    border-radius: 20px;
    padding: 5px 10px;
    box-shadow: 10px 10px 10px grey;
    cursor: pointer;
}

button:hover {
    box-shadow: none;
}
</style>
