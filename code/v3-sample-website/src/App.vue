<template>
  <!-- <h1>Something something</h1> -->
  <div class="cardContainer">
    <Card
      image="https://placekitten.com/200/300"
      imagePlaceholder="some random kitten"
      name="John Doe"
      handle="@johndoe"
      content="Lorem ipsum dolor sit amet consectetur adipisicing elit. Est repellat reprehenderit quas facilis soluta odit deleniti tempora suscipit corrupti. Magni commodi maiores vitae blanditiis quaerat beatae cupiditate quasi vel obcaecati."
      datetime="21st of January 2023"
    />
    <Card
      image="https://placekitten.com/200/300"
      imagePlaceholder="some random kitten"
      name="Jane Doe"
      handle="@janeDoe"
      content="Lorem ipsum dolor sit amet consectetur adipisicing elit. Est repellat reprehenderit quas facilis soluta odit deleniti tempora suscipit corrupti. Magni commodi maiores vitae blanditiis quaerat beatae cupiditate quasi vel obcaecati."
      datetime="2nd of January 2023"
    />
    <Card
      image="https://placekitten.com/200/300"
      imagePlaceholder="some random kitten"
      name="Pokemon"
      handle="@pokemon"
      content="Lorem ipsum dolor sit amet consectetur adipisicing elit. Est repellat reprehenderit quas facilis soluta odit deleniti tempora suscipit corrupti. Magni commodi maiores vitae blanditiis quaerat beatae cupiditate quasi vel obcaecati."
      datetime="17th of January 2023"
    />
  </div>
</template>

<script>
import Card from "./components/Card.vue";

export default {
  components: {
    Card
  }
}
</script>

<style scoped>
.cardContainer {
  display: flex;
  gap: 20px;
}
</style>