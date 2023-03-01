<template>
    <input type="text" class="fancyInput" :value="modelValue" @input="handleInput">
</template>

<script>
export default {
    props: {
        modelValue: String
    },
    emits: [
        "update:modelValue"
    ],
    methods: {
        handleInput(event) {
            this.$emit("update:modelValue", event.target.value);
        }
    }
}
</script>

<style scoped>
.fancyInput {
    padding: 15px;
    max-width: 50px;
    border-radius: 20px;
    border: solid 2px black;
}
</style>