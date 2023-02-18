<template>
    <input placeholder="Text goes here!!!!" :value="text" @input="inputChangeHandler">
    <div>The text says: {{ text }} </div>
</template>

<script>
export default {
    data: function() {
        return {
            text: "default text"
        }
    },
    methods: {
        inputChangeHandler(event) {
            this.text = event.target.value;
        }
    }
}
</script>