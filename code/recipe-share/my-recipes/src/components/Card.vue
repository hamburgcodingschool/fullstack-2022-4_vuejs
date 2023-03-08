<template>
  <div class="card">
    <div class="card-image">
      <figure class="image is-4by3">
        <img
          :src="recipe.image"
        />
      </figure>
    </div>
    <div class="card-content">
      <div class="media">
        <div class="media-content">
          <p class="title is-4">{{ recipe.name }}</p>
          <p class="subtitle is-6">{{ recipe.duration }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    recipe: Object
  }
}
</script>
