<template>
    <div :style="{ backgroundColor: this.color }"></div>
</template>

<script>

export default {
    props: {
        color: String
    }
}
</script>

<style scoped>
div {
    width: 250px;
    height: 250px;
    border: solid 3px black;
}


</style>
