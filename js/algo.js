
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



