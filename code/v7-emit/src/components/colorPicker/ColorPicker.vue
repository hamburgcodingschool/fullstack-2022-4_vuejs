<template>
    <p>IMA A COLOR PICKER</p>
    <!-- <ColorButton color="red" @colorClick="colorClickHandler" />
    <ColorButton color="green" @colorClick="colorClickHandler" />
    <ColorButton color="blue" @colorClick="colorClickHandler" />
    <ColorButton color="#F0F" @colorClick="colorClickHandler" />
    <ColorButton color="#FF0" @colorClick="colorClickHandler" /> -->
    <ColorButton v-for="color in listButtons" :color="color" @colorClick="colorClickHandler" />
    <p>The selected color is: {{ selectedColor }}</p>
    <ColorPreview :color="selectedColor" />
</template>

<script>
import ColorButton from "./ColorButton.vue";
import ColorPreview from "./ColorPreview.vue";

const listOfColors = [
    "red",
    "green",
    "pink",
    "yellow"
];

export default {
    components: {
        ColorButton,
        ColorPreview
    },
    data: function() {
        return {
            selectedColor: "no color selected yet",
            listButtons: listOfColors
        }
    },
    methods: {
        colorClickHandler(color) {
            this.selectedColor = color;
        },
    }
}
</script>