<template>
  <div>
    <NiceLilSwitch :isOn="switchIsOn" @switched="switchedHandler" />
  </div>
  <p>Dev help: {{ switchIsOn }}</p>
  <div v-if="switchIsOn">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpwNaYudU32S3TVKEMVwGIUIeVzyuu4u0ppg&usqp=CAU">
    <p>The switch is on here's an image...</p>
  </div>
  <div v-else>
    <p>the switch is off</p>
    <p>the switch is off</p>
    <p>the switch is off</p>
  </div>
</template>

<script>
import NiceLilSwitch from "./components/NiceLilSwitch.vue";

export default {
  components: {
    NiceLilSwitch
  },
  data: function() {
    return {
      switchIsOn: false
    }
  },
  methods: {
    switchedHandler(value) {
      // alert("something happened!!!!");
      // alert(value);
      this.switchIsOn = value;
    }
  }
}
</script>
