<template>
    <input type="text" name="name" placeholder="Recipe name" v-model="name" /> 
    <input type="text" name="image" placeholder="Image URL" v-model="image" />
    <select name="difficulty_levels_id" v-model="difficulty_levels_id">
        <option value="4">SUPER EASY</option>
        <option value="1">EASY</option>
        <option value="2">MEDIUM</option>
        <option value="3">HARD</option>
    </select>
    <input type="text" name="time" placeholder="Preparation time" v-model="time" />
    <textarea name="ingredients" placeholder="Ingredients" v-model="ingredients"></textarea>
    <textarea name="recipe" placeholder="Recipe description" v-model="recipe"></textarea>
    <button @click="handleInsertRecipe">INSERT A NEW RECIPE</button>
</template>

<script>
    export default {
        data: function() {
            return {
                name: "",
                image: "",
                difficulty_levels_id: 1,
                time: "",
                ingredients: "",
                recipe: ""
            }
        },
        methods: {
            async handleInsertRecipe() {
                const newRecipe = {
                    name: this.name,
                    image: this.image,
                    difficulty_levels_id: this.difficulty_levels_id,
                    time: this.time,
                    ingredients: this.ingredients,
                    recipe: this.recipe
                }
                const recipeBodyString = JSON.stringify(newRecipe);
                const fetchOptions = {
                    method: "POST",
                    headers: {
                        'Content-type': 'application/json; charset=UTF-8',
                    },
                    body: recipeBodyString
                };

                const response = await fetch("http://localhost:3000/recipes", fetchOptions);
                const result = await response.json();
                console.log(result);
            }
        }
    }
</script>