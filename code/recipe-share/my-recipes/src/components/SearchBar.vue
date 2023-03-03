<template>
  <div class="container is-fluid my-5">
    <form @submit="handleSearch">
      <div class="field has-addons has-addons-centered">
          <div class="control is-expanded">
            <input class="input is-rounded" type="text" placeholder="Find a repository" v-model="search"  />
          </div>
          <div class="control">
            <button class="button is-info is-rounded"> <i class="fas fa-search"></i> </button>
          </div>
      </div>
    </form>
  </div>
</template>

<script>

export default {
  data: function() {
    return {
      search: ""
    }
  },
  methods: {
    handleSearch(event) {
      event.preventDefault();
      this.$router.push({ name: 'search', query: { s: this.search } });
    }
  }
}
</script>

<style scoped>

</style>