<template>
  <div class="container">
    <EventExample />
    <Label :text="123" />
    <Label />
    <Label text="Servus" />
    <Label text="Moin Moin my dudes!" />
  </div>
</template>

<script>
import Label from "./components/Label.vue";
import EventExample from "./components/EventExample.vue";

export default {
  components: {
    Label,
    EventExample
  }
}

</script>

<style scoped>
.container {
  display: flex;
  gap: 20px;
}
</style>