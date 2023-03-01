<template>
  <div v-for="(value, index) in values" :key="index">
    <FancySliderInput :modelValue="value" @update:modelValue="handleUpdate(index, $event)" />
  </div>

  <h2>{{ sum }} / {{ total }}</h2>
</template>

<script>
import FancySliderInput from "./components/FancySliderInput.vue";

export default {
  components: {
    FancySliderInput,
  },
  computed: {
    sum() {
      let sum = 0;
      for (let i = 0; i < this.values.length; i++) {
        sum += this.values[i];
      }
      return sum;
    },
    total() {
      return this.values.length * 100;
    }
  },
  data: function() {
    return {
      values: [0, 0, 0]
    }  
  },
  methods: {
    handleUpdate(index, value) {
      console.log(value);
      this.values[index] = Number(value);
      console.log(this.values);
    }
  }
}
</script>