<template>
    <div>
        <button @click="buttonHandler">Click Me!!!!!</button>
    </div>
</template>

<script>

export default {
    props: ["value"],
    methods: {
        buttonHandler() {
            alert("YOU CLICKED A BUTTON!!! GOOOD FOR YOU!");
            console.log("YOU REALLY DID CLICK AB UTTON YOUR AWESOME...");
        }
    }
}
</script>