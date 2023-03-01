<template>
    <div class="flexContainer">
        <FancyRange v-model="fancyValue" />
        <FancyInput v-model="fancyValue" />
  </div>
  <!-- <p>the fancy value is {{ fancyValue }}</p> -->
</template>

<script>
import FancyInput from "./FancyInput.vue";
import FancyRange from "./FancyRange.vue";

export default {
  components: {
    FancyInput,
    FancyRange
  },
  data: function() {
    return {
      fancyValue: this.modelValue
    }
  },
  props: {
    modelValue: String
  },
  watch: {
    fancyValue() {
        this.$emit("update:modelValue", this.fancyValue);
    }
  },
  emits: ["update:modelValue"]
}

</script>

<style scoped>
.flexContainer {
    padding: 30px;
    display: flex;
    gap: 20px;
}
</style>