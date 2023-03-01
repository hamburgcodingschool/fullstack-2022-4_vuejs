async function fetchEmAll() {
    try {
        const response = await fetch("https://pokeapi.co/api/v2/pokemon/");
        const result = await response.json();
        console.log(result);

        return result.results;
      } catch(error) {
        console.log(error);
      }

      // const vueContext = this;

      // fetch("https://pokeapi.co/api/v2/pokemon/")
      //   .then(function(response) {  
      //     console.log(response);
      //     return response.json();
      //   })
      //   .then(function(result) {
      //     console.log(result);
      //     vueContext.pokemonList = result.results;
      //   }).catch(function(error) {
      //     alert("UNSPECIFIED ERROR!");
      //   });
}

async function fetchJustOneByURL(url) {
    try {
        const response = await fetch(url);
        const result = await response.json();
        
        return result;
    } catch(error) {
        console.log(error);
    } 

}

function fetchJustOneById(id) {
    return fetchJustOneByURL(`https://pokeapi.co/api/v2/pokemon/${id}`);
}

export default {
    fetchEmAll,
    fetchJustOneByURL,
    fetchJustOneById
}