var colors = ["blue", "red", "pink", "purple"]
var names = ["Bob", "Dante", "Thelma", "Charlie"]
colors.push("green");
names.push("Mr. Peaches");
console.log(colors);
console.log(names);
var horse_color = {};
for (var i = 0; i < names.length; i++) {
    horse_color[names[i]] = colors[i];
}
console.log(horse_color);

function Car(make, model, year) {
    this.make = make;
    this.model = model;
    this.year = year;

    this.sound = function() { console.log("Vrrooom vroom!"); };
    this.beep = function() { console.log("Beep Beep!"); };

    console.log("CAR INITIALIZATION COMPLETE");
}

// Calling constructor function
var car1 = new Car("Audi", "Q5", 2013);
car1.sound();

var car2 = new Car("Lexus", "RX450", 2013);
car2.beep();

var car3 = new Car("Batmobile", "Dragon", 2050);
car3.sound();
