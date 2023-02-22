<template>
    <input type="text" placeholder="Write something here" @input="filterHandler">
    <ul>
        <li v-for="fruit in fruitBasket"> {{ fruit }}</li>
    </ul>
</template>

<script>

const originalList = [
    "Apple 🍎",
    "Banana 🍌",
    "Pineapple 🍍",
    "Mango 🥭",
    "Watermelon 🍉"
];

export default {
    data: function() {
        return {
            fruitBasket: originalList,
        }
    },
    methods: {
        filterHandler(event) {
            const filterText = event.target.value;
            this.fruitBasket = originalList.filter(function(value) {
                return value.toLowerCase().includes(filterText.toLowerCase())
            });
        }
    }
}
</script>
