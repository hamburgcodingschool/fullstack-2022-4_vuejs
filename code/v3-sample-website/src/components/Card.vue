<template>
    <div class="card">
    <div class="card-image">
        <figure class="image is-4by3">
        <img :src="image" :alt="imagePlaceholder">
        </figure>
    </div>
    <div class="card-content">
        <div class="media">
        <div class="media-left">
            <figure class="image is-48x48">
            <img src="https://bulma.io/images/placeholders/96x96.png" alt="Placeholder image">
            </figure>
        </div>
        <div class="media-content">
            <p class="title is-4">{{ name }}</p>
            <p class="subtitle is-6">{{ handle }}</p>
        </div>
        </div>

        <div class="content">
        HAHA {{ content }}
        <br>
        <br>
        <time datetime="2016-1-1">{{ datetime }}</time>
        </div>
    </div>
    </div>
</template>

<script>
export default {
    props: [ "name", "handle", "content", "datetime", "image", "imagePlaceholder", "thumbnail" ]
}
</script>