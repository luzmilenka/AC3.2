//: Playground - noun: a place where people can play

import UIKit


//1)

//a) Create an instance of a dictionary called citiesDict that maps 3 countries to their capital cities

var citiesDict: [String : String] = ["India" : "New Delhi", "US" : "Washington D.C", "Germany" : "Berlin"]

//b) Add two more countries to your dictionary

citiesDict["Bolivia"] = "Sucre"
citiesDict["Turkey"] = "Ankara"


//c) Translate at least 3 of the capital names into another language

citiesDict.updateValue("Yeni Delhi", forKey: "India")
citiesDict.updateValue("Vasington", forKey: "US")
citiesDict.updateValue("Sukre", forKey: "Bolivia")


//2)

var someDict:[String:Int] = ["One": 1, "Two": 4, "Three": 9, "Four": 16, "Five": 25]

//a) using someDict, add together the values associated with "Three" and "Five" and print the result.

var sum = someDict["Three"]! + someDict["Five"]!
print(sum)



//b) Add values to the dictionary for the keys "Six" and "Seven"

someDict["Six"] = 36
someDict["Seven"] = 49
print(someDict)

//c) Make a key caled "productUpToSeven" and set its value equal to the product of all the values

someDict["productOfSeven"] = 14400

//d) Make a key called "sumUpToSix" and set its value equal to the sum of the keys "One", "Two", "Three", "Four", "Five" and "Six"

var sumUpToSix = 0

for (key,value) in someDict {
    if key != "seven" && key != "productUpToSeven" {
        sumUpToSix += value
    }
}
print(sumUpToSix)



someDict["sumUpToSix"] = 55

//e) Remove the new keys made for parts c and d
someDict.removeValueForKey("productOfSeven")
someDict.removeValueForKey("sumUpToSix")

print(someDict)

//f) Add 2 to every value inside of someDict

for (key, value) in someDict {
    if let myValue = someDict[key] {
    someDict[key] = myValue + 2
    }
}
print(someDict)


//3)  (from http://www.themobilemontage.com/wp-content/uploads/2015/05/hw1.pdf)
//a) Create a variable that is explicitly typed as a dictionary that maps strings to floating point numbers. Initialize the variable to the data shown in the table below which lists an author name and their comprehensibility score.
/*
“Mark Twain” - 8.9
“Nathaniel Hawthorne” - 5.1
“John Steinbeck” - 2.3
“C.S. Lewis” - 9.9
“Jon Krakaur” - 6.1
*/

//b) Using the dictionary created in the previous problem, do the following: Print out the floating-point score for “John Steinbeck”. Add an additional author named “Erik Larson” with an assigned score of 9.2.  Write an if/else statement that compares the score of John Krakaur with Mark  Twain. Print out the name of the author with the highest score.

//c)  Use a for loop to iterate through the dictionary created in problem 3a and print out the content in the form of key: value, one entry per line.





//4 -7 source :  https://www.weheartswift.com/dictionaries/)
//4)  
//4a)You are given a dictionary code of type [String:String] which has values for all lowercase letters. The code dictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a message which contains only lowercase letters and spaces. Use the code dictionary to encode the message and print it.

var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

var message = "hello world"

if let h = code["g"], e = code["d"], l = code["k"], o = code["n"], w = code["v"], r = code["q"], d = code["c"] {
    print("\(h)\(e)\(l)\(l)\(o)", "\(w)\(o)\(r)\(l)\(d)")
}


//4b)
//You are also given a encodedMessage which contains only lowercase letters and spaces. Use the code dictionary to decode the message and print it.

var encodedMessage = "uijt nfttbhf jt ibse up sfbe"

for i in encodedMessage.characters {
    if String(i) == " " {
        print(" ", separator: "", terminator:"")
    }
    for (k, v) in code {
        if String(i) == v {
            print(k, terminator: "")
        }
    }
}


//5)
//5a)You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.

var people: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]

var firstName = [String]()

for dict in people {
    if let first = dict["firstName"] {
        firstName.append(first)
    }
}
print(firstName)

//5b) Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.

var fullName = [String]()

for dict in people {
    if 
}
//6)
//You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the best score and print his full name.


var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]

/*6b) Print out the dictionary above in the following format:
full name - score
...
*/

//7)
//You are given an array of integers. Find out the frequency of each one.
//The frequency of a number is the number of times it appears in the array.
//Print the numbers in ascending order followed by their frequency.

var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]



//8)
//Print the most common letter in the string below:

var myString = "We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question."


//9)
//Write code below that creates a dictionary where the keys are Ints in between 0 and 20 inclusive, and each key's value is its cube.



//10)
let statePop = ["Alabama": 4.8, "Alaska": 0.7, "Arizona": 6.7, "Arkansas": 3.0]
let testStates = ["California","Arizona", "Alabama", "New Mexico"]

//Write code below that iterates through testStates and prints out whether or not that key is in statePop
