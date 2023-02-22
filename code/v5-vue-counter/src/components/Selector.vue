<template>
    <select v-model="selectedFruit">
        <option value="" disabled selected>Select one option</option>
        <option>Apple 🍎</option>
        <option>Banana 🍌</option>
        <option>Pineapple 🍍</option>
        <option>Mango 🥭</option>
        <option>Watermelon 🍉</option>
    </select>

    <div v-if="!selectedFruit">Please select a fruit</div>
    <div v-else>You selected {{ selectedFruit }}</div>
</template>

<script>

export default {
    data: function() {
        return {
            selectedFruit: ""
        }
    },
}
</script>
