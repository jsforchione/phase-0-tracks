// Release 0:
function longest(arr) {

var longestString = null;
    for (var i = 0; i < arr.length; i++) {
        if (arr[i].length > 0) {
            longestString = arr[i];
            for (var j = 1; j < arr.length; j++) {
                if (arr[j] > arr[i]) {
                    longestString = arr[j];
                }
            }
        }
    }
    console.log(longestString);
}

// lines 19-21 aren't working as I want them to, need to print the longest phrase
var longArr = [];
longArr = longest("long phrase","longest phrase","longer phrase");
return longArr;


//Release 1:

function matching(object1, object2) {
    for (var i = 0; i < 2; i++) {
        for (var j = 0; j < 2; j++) {
            
        }
    }
}

