//: Playground - noun: a place where people can play

import UIKit

//---------------------------------------------
// Helper Function
func randNum() -> Bool {
    let random = Int(arc4random_uniform(6)) % 2
    if random == 0 {
        return true
    }
    return false
}


func lvlGenerator() -> Int {
    return Int(arc4random_uniform(12))
}

func eStone() -> String {
    let random = Int(arc4random_uniform(3))
    switch random {
    case 0:
        return "Electric"
    case 1:
        return "Grass"
    case 2:
        return "Fire"
    case 3:
        return "Water"
    default:
        return "No Stone"
    }
}

func starterPokemon() -> String {
    let random = Int(arc4random_uniform(3))
    switch random {
    case 0:
        return "Pikachu"
    case 1:
        return "Bulbasaur"
    case 2:
        return "Charmander"
    case 3:
        return "Squirtle"
    default:
        return "Not a Pokemon"
    }
}
//---------------------------------------------



//A)
var tuple: (Int, Int)?
if randNum() {
    tuple = (5, 3)
 
// safely unwrap “tuple” if there’s a non-nil tuple value and print it out

if let tupleUnwrap = tuple {
    print(tupleUnwrap)
    }
}



//B)
let myInt: Int?
if randNum() {
    myInt = 5

//Write code that either doubles myInt and then prints it, or prints an error message if myInt is nil

if let myIntD = myInt {
    print(myIntD * 2)
}
else {
    print("Error")
    }
}





//C)
let myString: String?
let stringTwo = ", LastName"
if randNum() {
    myString = "FirstName"

//Write code that prints out “FirstName, LastName” using string concatenation or prints an error message if myString is nil.

if let myString2 = myString {
    print(myString2 + stringTwo)
    }
}



//D)
let myDouble: Double?
let doubleTwo = 5.0
if randNum() {
    myDouble = 12


//Write code that prints out the product of myDouble and doubleTwo or prints an error message if myDouble is nil
if let productMyDouble = myDouble {
    print(productMyDouble * doubleTwo)
}
else {
    print("Error")
    }
}








//E)
var isTheGreatest: Bool?

if randNum() {



//  Determine if the variable contains a Boolean or nil value. If nil set the variable to false else keep it true

isTheGreatest
if let _ = isTheGreatest {
        
} else {
    isTheGreatest = false
    }
}
isTheGreatest








//F)
var myTuple: (Int?, Int?, Int?, Int?)

if randNum() {
    myTuple.0 = 5
    myTuple.2 = 14
}

if !randNum() {
    myTuple.1 = 9
    myTuple.3 = 10
}

//Print the sum of each non-nil element in myTuple.

if let a = myTuple.0, b = myTuple.2 {
    print(a + b)
}

if let c = myTuple.1, d = myTuple.3 {
    print(c + d)
}

var sum = 0
if let a = myTuple.0 {
    sum += a
}

if let b = myTuple.1 {
    sum += b
}
if let c = myTuple.2 {
    sum += c
}
if let d = myTuple.3 {
    sum += d
}
print(sum)





//G)
let myIntString = "35"
//Write code that adds 15 to myIntString, then prints the sum.  Use the Int() function which returns an Integer?


var intString = Int(myIntString)
intString! = intString! + 15
print(intString)








//H)
let pokemon: String?
var evolutionaryStone: String?
pokemon = starterPokemon()
evolutionaryStone = eStone()
// evolve your pokemon with appropriate stone








//I)
var lvl: Int?
lvl = lvlGenerator()
var exp = 21
// add 150 exp if lvl is above 7









