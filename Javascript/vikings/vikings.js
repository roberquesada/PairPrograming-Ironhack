var Viking = function (name, strength, health) {
  this.name = name;
  this.strength = strength;
  this.health = health;
}

Viking.prototype.attack = function (enemy) {
  return enemy.health -= getRandomArbitrary(0, this.strength)
}

function getRandomArbitrary(min, max) {
  return Math.floor(Math.random() * (max - min) + min);
}

var Pit = function (round) {
  this.round = round;
}

Pit.prototype.battleStarGalactica = function(viking1, viking2) {

  var battleEnd = false;

  while(battleEnd == false && this.round > 0 ) {
    if (this.round %2 == 0) {

      if (viking1.strength >= viking2.health) {
        console.log(viking2.name + ' se rinde y gana ' + viking1.name );
        battleEnd = true;
      } else {
        viking1.attack(viking2);
      }

    } else {

      if (viking2.strength >= viking1.health) {
        console.log(viking1.name + ' se rinde y gana ' + viking2.name );
        battleEnd = true;
      } else {
        viking2.attack(viking1);
      }
    }
    this.round--;
  }

  if (this.round == 0) {

    if (viking1.health > viking2.health) {
      console.log(viking2.name + ' se rinde y gana ' + viking1.name);
    } else {
      console.log(viking1.name + ' se rinde y gana ' + viking2.name);
    }
  }
};

var Saxons = function () {
  this.saxons_arr = [];
};

Saxons.prototype.create = function (total) {
  var totalSaxons = getRandomArbitrary(1, total);

  for (var i = 1; i <= totalSaxons; i++) {
    this.saxons_arr.push(
      {'health': getRandomArbitrary(1, 30), 'strength': getRandomArbitrary(1, 25)})
  };
}


var pit = new Pit(10);
var vikingMale = new Viking('Fernando', 40, 100);
var vikingFemale = new Viking('Isaura', 30, 100);
var saxons = new Saxons();

pit.battleStarGalactica(vikingMale, vikingFemale);
saxons.create(20);
console.log(saxons.saxons_arr);

// console.log(vikingMale.name + " " + vikingMale.health);
// console.log(vikingFemale.name + " " + vikingFemale.health);
