//: Playground - noun: a place where people can play

import UIKit

protocol CanMakeNoise {
  func makeNoise()
}

<<<<<<< HEAD
class Human: CanMakeNoise {
  func makeNoise() {
    print("How did trump win")
  }
}

class Pig: CanMakeNoise {
  func makeNoise() {
    print("oink")
  }
}

class Cow: CanMakeNoise {
  func makeNoise() {
    print("moo")
  }
=======
class Human {
  
}

class Pig {
  
}

class Cow {
  
>>>>>>> 89d0025222eb032d967e4b94b0abe49862a3ceca
}

let human = Human()
let pig = Pig()
let cow = Cow()

<<<<<<< HEAD
let arrayOfNoiseMaker: [CanMakeNoise] = [human, pig, cow]
=======
// let arrayOfNoiseMaker: [CanMakeNoise] = [human, pig, cow]
>>>>>>> 89d0025222eb032d967e4b94b0abe49862a3ceca

/*:
 **Tasks**:
 1. Uncomment above line and make the code compile. This can be achieved by implementing the `CanMakeNoise` protocol in all the classes. Think about a noise each class could make and print it to the console using `print`.
 2. Iterate over `arrayOfNoiseMaker` and let each object make their noise
 */

<<<<<<< HEAD
for noiseMaker in arrayOfNoiseMaker {
  noiseMaker.makeNoise()
}
=======
>>>>>>> 89d0025222eb032d967e4b94b0abe49862a3ceca
