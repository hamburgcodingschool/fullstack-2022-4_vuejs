import filterWithCallback from "./myAwesomeUtil.js";

filterWithCallback

const people = [
    {
        name: "Hugo",
        age: 52
    },
    {
        name: "Samuel",
        age: 34
    },
    {
        name: "Basti",
        age: 33
    },
    {
        name: "Helder",
        age: 42
    },
    {
        name: "Lily",
        age: 22
    },
    {
        name: "Paul",
        age: 30
    },
    {
        name: "Vassilis",
        age: 28
    },
 ];

function getOldies(arrayOfPeople, minAge) {
    const oldies = [];
    for (let i = 0; i < arrayOfPeople.length; i++) {
        if (arrayOfPeople[i].age >= minAge) {
            oldies.push(arrayOfPeople[i]);
        }
    }
    return oldies;
}

const filtered = myAwesomeUtil.filterWithCallback(people, function(value) {
    return value.age >= 30;
});

const filtered2 = people.filter(function(value) {
    return value.name.length >= 6;
});

console.log(filtered);
console.log(filtered2);



button1.addEventListener("click", function(event) {

});