const express = require("express");
const app = express();

const port = 3000;

const connection = require("./database/connection");

app.use(express.json());

app.get("/recipes", async function(req, res) {
    const results = await connection.getRecipes();
    res.json(results);
});

app.get("/recipes/:id", async function(req, res) {
    const id = req.params.id;
    
    const result = await connection.getRecipeByID(id);
    res.json(result);
});

app.post("/recipes", async function(req, res) {
    const result = await connection.addRecipe(req.body);
    res.json(result);
});

app.put("/recipes/:id", function(req, res) {
    console.log("EDIT RECIPE BY ID");
    res.send("EDIT RECIPE BY ID");
});

app.delete("/recipes/:id", function(req, res) {
    console.log("DELETE RECIPE BY ID");
    res.send("DELETE RECIPE BY ID");
});


app.listen(port, function() {
    console.log(`Listening on ${port}`);
});