//Release 0:

function longest(arr) {
//var arrString = arr.toString()
//var str = arrString.split(",")
var lngth = 0;
var longestString;
    for (var i = 0; i < arr.length; i++) {
        if (arr[i].length > lngth) {
            var lngth = arr[i].length;
            longestString = arr[i];
        }
    }
    console.log(longestString)
}
var longArr = [];
longArr = longest("long phrase","longest phrase","longer phrase");
return longArr;

//Release 1:

