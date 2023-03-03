<template>
  <Hero />
  <div class="container is-fluid my-5">
    <CardContainer />
  </div>
</template>

<script>

import Hero from "../components/Hero.vue";
import CardContainer from "../components/CardContainer.vue";


export default {
  components: {
    Hero,
    CardContainer,
  }
}
</script>