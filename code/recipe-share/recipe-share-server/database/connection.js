const mysql = require("mysql2");

const connection = mysql.createConnection({
    host: "localhost",
    port: "3306",
    user: "root",
    password: "12345678",
    database: "recipe-share"
});

function query(sql, params) {
    return new Promise(function(resolve, reject) {
        connection.query(sql, params, function(err, results) {
            if (err) {
                reject(err);
                return;
            }
            resolve(results);
        });
    });
}

async function getRecipes() {
    const sql = `SELECT * FROM recipes`;
    const results = await query(sql);
    return results;
}

async function getRecipeByID(id) {
    const sql = `SELECT * FROM recipes WHERE id = ?`;
    const results = await query(sql, [id]);
    return results;
}

async function addRecipe(recipeBody) {
    const sql = `INSERT INTO recipes VALUES(NULL, ?, ?, ?, ?, ?, ?)`;
    const params = [
        recipeBody.name,
        recipeBody.image,
        recipeBody.difficulty_levels_id,
        recipeBody.time,
        recipeBody.ingredients,
        recipeBody.recipe
    ];
    const results = await query(sql, params);
    return results;
}

module.exports = {
    getRecipes,
    getRecipeByID,
    addRecipe
};