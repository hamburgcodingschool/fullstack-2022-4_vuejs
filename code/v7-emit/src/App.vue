<template>
  <h1>Hello Vue!</h1>
  <CustomButton text="My First Button" color="red" @myClick="button1ClickHandler" />
  <CustomButton text="My Second Button" color="green" @myClick="button2ClickHandler" />
  <CustomButton text="My Last Button" color="blue" @myClick="button3ClickHandler" />

  <ColorPicker />
</template>

<script>
import CustomButton from "./components/CustomButton.vue";
import ColorPicker from "./components/colorPicker/ColorPicker.vue";

export default {
  components: {
    CustomButton,
    ColorPicker
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