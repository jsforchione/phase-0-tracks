// Release 0:
function longest(arr) {
    var longestString = null
    for(var i =0; i< arr.length; i++) {
        if ( longestString == null ) {
            longestString = arr[i]
        } else {
            if (arr[i].length > longestString.length) {
                longestString = arr[i]
            }
        }
    }
    console.log(longestString)
}

// Release 1:
function compare(obj1, obj2) {
    if(JSON.stringify(obj1) == JSON.stringify(obj2) ) {
        console.log('test');
    }
    
}

// Release 2:
function randomWord(int) {
    var array = [];
    var string = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    var random = Math.floor((Math.random() * 10) + 1);
    for(var i=0;i<int;i++) {
        for(var j = 0; j<int;j++) {
            if (j ==0) {
                array[i] = string.charAt(Math.floor(Math.random() * random));
            } else {
                array[j] = array[j] + string.charAt(Math.floor(Math.random() * random));
            }
            
        }
        
    }
    return array
}

// Driver Code:
a = ["long phrase","longest phrase","longer phrase"];
longest(a);
b = ["a", "ab", "abc"];
longest(b);
c = ["really long string", "smaller string", "little"]
longest(c);

obj1 = {"0":"1","3":"b"};
obj2 = {"0":"a","c":"4"};
Object.keys(obj1) . every(k1 => 
  Object.keys(obj2) . some(k2 =>
    obj1[k1] === obj2[k2]
  )
);

obj1 = {"n":"o", "h" : "o"};
obj2 = {"a" : "e", "i" : "u"};
Object.keys(obj1) . every(k1 =>
    Object.keys(obj2) . some(k2 =>
        obj1[k1] === obj2[k2]
    )
);

for(var i=0; i<10;i++) {
    var longArray = randomWord(5)
    console.log(longArray)
    longest(longArray)
}
