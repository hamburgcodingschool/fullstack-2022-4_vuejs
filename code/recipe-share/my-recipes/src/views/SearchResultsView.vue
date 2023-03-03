<template>
    <p>You are searching for: {{ search }}</p>
</template>

<script>
export default {
    data: function() {
        return {
            search: ""
        }
    },
    mounted() {
        this.search = this.$route.query.s;  
    },
    updated() {
        this.search = this.$route.query.s;  
    }
}
</script>