const x = 10;

function filterWithCallback(originalArray, callback) {
    const newArray = [];
    for (let i = 0; i < originalArray.length; i++) {
        if ( callback( originalArray[i] ) ) {
            newArray.push(originalArray[i]);
        }
    }
    return newArray;
}

function myOtherAwesomeUtility() {
    return "YAY!";
}

export default {
    filterWithCallback,
    myOtherAwesomeUtility
}