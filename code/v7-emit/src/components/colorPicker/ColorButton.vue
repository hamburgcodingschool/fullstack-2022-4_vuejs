<template>
    <button @click="clickHandler" :style="{ backgroundColor: this.color }"></button>
</template>

<script>


export default {
    props: {
        color: String
    },
    emits: ["colorClick"],
    methods: {
        clickHandler() {
            this.$emit("colorClick", this.color);
        }
    }
}
</script>

<style scoped>
button {
    width: 50px;
    height: 50px;
    border: solid 3px black;
    background-color: aquamarine;
    border-radius: 50%;
    padding: 5px 10px;
    box-shadow: 10px 10px 10px grey;
}


</style>
