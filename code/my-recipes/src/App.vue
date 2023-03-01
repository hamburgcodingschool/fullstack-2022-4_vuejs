<template>
  <NavBar />
  <SearchBar />
  <RouterView />
  <Footer />  
</template>

<script>
import NavBar from "./components/NavBar.vue";
import SearchBar from "./components/SearchBar.vue";
import Footer from "./components/Footer.vue";

export default {
  components: {
    NavBar,
    SearchBar,
    Footer
  }
}
</script>

<style scoped></style>
