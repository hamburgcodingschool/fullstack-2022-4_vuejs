<template>
  <div>{{ counter1 }}</div>
  <div>{{ counter2 }}</div>
  <button @click="oneLessHandler">One Less!!!!!</button>
  <button @click="oneMoreHandler">One More!!!!!</button>
  
  <br>

  <label>
    <input type="radio" name="rg1" @change="radioHandler" value="1" checked> Counter 1
  </label>
  
  <br>
  
  <label>
    <input type="radio" name="rg1" @change="radioHandler" value="2"> Counter 2
  </label>
  
  <br>
  <br>
  <br>
  
  <div>The currently selected Radio is {{ checked }}</div>

</template>

<script>

export default {
  data: function() {
    return {
      counter1: 0,
      counter2: 0,
      checked: "1"
    }
  },
  methods: {
    oneMoreHandler() {
      if (this.checked == "1") {
        this.counter1++;
      } else {
        this.counter2++;
      }
    },
    oneLessHandler() {
      if (this.checked == "1") {
        this.counter1--;
      } else {
        this.counter2--;
      }
    },
    radioHandler(event) {
      this.checked = event.target.value;
    }
  }
}
</script>