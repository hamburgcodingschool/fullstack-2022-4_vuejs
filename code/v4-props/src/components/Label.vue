<template>
    <div>{{ text }}</div>
</template>

<script>

export default {
    props: {
        text: {
            type: String,
            default: "default value"
        },
    }
}

</script>

<style scoped>
div {
    display: inline-block;
    padding: 50px;
    background-color: pink;
}
</style>