<template>
  <h1>Hello Vue!</h1>
  <CustomButton text="My First Button" @myClick="button1ClickHandler" />
  <CustomButton text="My Second Button" @myClick="button2ClickHandler" />
  <CustomButton text="My Last Button" @myClick="button3ClickHandler" />
</template>

<script>
import CustomButton from "./components/CustomButton.vue";

export default {
  components: {
    CustomButton
  },
  methods: {
    button1ClickHandler(value) {
      console.log(value);
      // alert(event);
    },
    button2ClickHandler() {
      alert("Codisfgjoidfsjgpodfjgpodfjpgodj")
    },
    button3ClickHandler() {
      alert("🤣")
    }
  }
}
</script>