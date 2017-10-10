//: [Previous](@previous)

import Foundation

let favProgrammingLanguage = "Swift"

/*
 Collections and Control Flow
 Arrays
*/

// These 2 array notations are equivalent
var someArr: [String] = []
var todo = [String]()
// the append method is great for add a single element
todo.append("Finish collections course")
// Concatenating is great for adding multiple items
// Using unary addition operator
todo += ["buy groceries", "respond to emails"]

//print(todo)
todo += ["Order book online", "some other task"]

// immutable arrays
let secondTaskList = ["Clean upstairs bathroom"]
//secondTaskList.append("Pay bills") Error!!
//secondTaskList += ["someTask"] Error!!

// Reading from Arrays
let firstTaskList = todo[0]
let thirdTaskList = todo[2]

// Modifying Existing Values in an Array
// (Mutating and Array)

todo[4] = "Brush teeth"
todo[1] = "Watch Treehouse content"

// Insert Using Indexes
// not recommended for large data sets
todo.insert("watch TV", at: 2)
//print(todo)

// Removing items from Arrays
// not recommended for large data sets
todo.remove(at: 2)
//print(todo)


/*
 We just learned the ins and outs of arrays, so let's put that knowledge into practice. Start by declaring a new array of Ints with six numbers as values. Assign this array to a variable named arrayOfInts.
 */

var arrayOfInts = [0, 1, 2, 3, 4, 5]

/*
 Since the array is mutable, let's add two more values to the existing array. There are two ways we can add items to an array and I want you to give both a try. First, add one item to the array using the append method.
 
 Remember: We invoke methods on an array using a period or dot. After the dot we write out the method name and a value to append in parentheses following the name.
 
 Next, add another item to the array by concatenating an array. When concatenating, assign the results of the expression back to arrayOfInts.
 */

arrayOfInts.append(10)
arrayOfInts += [24]

/*
 We also learned about reading values from an array. Retrieve the 5th item (remember array indexes start at 0) and assign the result to a constant named value.
 */

let value = arrayOfInts[4]

/*
 For the last task, remove the 6th item from the array and assign the result to a constant named discardedValue.
 
 To remove an item, use the method remove(at:) and put the index number in between parentheses that you want to remove.
 */

let discardedValue = arrayOfInts.remove(at: 5)

// todo[6] Crashed

// Dictionaries

/*
     Airport Code (key)     Airport Name (Value)
 
             LGA            La Guardia
             LHR            Heathrow
             CDG            Charles de Gualle
             HKG            Hong Kong International
             DXB            Dubai International
 */

var airportCodes: [String: String] = [
 "LGA": "La Guardia",
 "LHR": "Heathrow",
 "CDG": "Charles de Gualle",
 "HKG": "Hong Kong International",
 "DXB": "Dubai International"
]

//print(airportCodes)

airportCodes["LGA"]
airportCodes["SFO"] = "San Francisco International"

airportCodes.updateValue("Dublin International", forKey: "DUB")
airportCodes["DXB"] = nil
airportCodes.removeValue(forKey: "CDG")

//print(airportCodes)

// Dealing with Non Existant Data

let newYorkAirport = airportCodes["LGA"]
type(of: newYorkAirport)
let orlandoAirport = airportCodes["MCO"]


var todo2: [String] = ["finish collections course", "buy groceries", "respond to emails", "pick up dry cleaning", "order books on line", "mow the lawn"]
todo2[0]
//print(todo2[0])
//print(todo2[1])
//print(todo2[2])
for task in todo2 {
    print(task)
}

/*
 For this challenge, we're going to use a for in loop to compute the multiplication table for 6 and append the results to an array.
 
 Your task for this first step is to create a for in loop that iterates over a range. Multiplication tables typically range from 1 to 10 (with 10 included) so the range you are iterating over should go from 1 to 10.
 
 Inside the body of the loop, we're going to use the multiplier to get the multiple of 6. For example, if the multiplier is 1, then the multiple is 1 times 6, which is equal to 6.
 
 Once you have a value, append it to the results array. This way once the for loop has iterated over the entire range, the array will contain the first 10 multiples of 6.
 
 For in loops also define a constant that temporarily stores the value in the iteration process. For the loop you're writing, name this constant multiplier.
 */
var results: [Int] = []

for multiplier in 1...10 {
    let product = multiplier * 6
    results.append(product)
}
print(results)

// While loops

var x = 0

while x <= 5 {
    print(x)
    x += 1
}

var index = 0

while index < todo2.count {
    index += 1
    print(index)
}

// Repeat While

var counter = 1

while counter < 1 {
    print("I'm inside a while loop")
    counter += 1
}

repeat {
    print("I'm inside the repeat loop")
    counter += 1
} while counter < 1

/*
 In this task, we have an array of numbers and we want to compute the sum of its values.
 
 We have a variable ,sum, that will store the value of the sum of numbers from the array.
 
 We also have a variable ,counter, which we will use to track the number of iterations of the while loop.
 
 Step 1: Create a while loop. The while loop should continue as long as the value of counter is less than the number of items in the array. (Hint: You can get that number by using the count property)
 
 Now that we have the while loop set up, it's time to compute the sum!
 Using the value of counter as an index value, retrieve each value from the array and add it to the value of sum.
 
 For example: sum = sum + newValue. Or you could use the compound addition operator sum += newValue where newValue is the value retrieved from the array.
 */

let numbers = [2,8,1,16,4,3,9]
var sum = 0
var counter2 = 0

while counter2 < numbers.count {
    sum += numbers[counter2]
    counter2 += 1
}
print(sum)

// If statements and logical operators

var temperature = 11

if temperature > 13 && temperature < 18 {
    print("Its getting chilly. I recommend a light sweater.")
} else if temperature < 12 {
    print("It's getting cold. Time to wear a jacket.")
} else {
    print("It feels great outside. A t-shirt will do.")
}

if temperature > 7 && temperature < 12 {
    print("Might want to weat a scarf with that jacket.")
}

var isRaining = true
var isSnowing = false

if isRaining || isSnowing {
    print("Get out those boots!")
    isRaining = false
}

if !isRaining {
    print("Yay the sun is out.")
}

if (isRaining || isSnowing) && temperature < 2 {
    print("Definitely get the gloves out!")
}


// Switch Statements

let airportCodes2 = ["LGA", "LHR", "CDG", "HKG", "DXB"]

for airportCode in airportCodes2 {
    switch airportCode {
    case "LGA": print("New York")
    case "LHR": print("London")
    case "CDG": print("Paris")
    case "HKG": print("Hong Kong")
    default: print("I don't know which city that airport is in!")
    }
}

import GameKit
let randomTemp0 = GKRandomSource.sharedRandom().nextInt(upperBound: 125)
let randomTemp1 = GKRandomSource.sharedRandom().nextInt(upperBound: 125)
let randomTemp2 = GKRandomSource.sharedRandom().nextInt(upperBound: 125)

func whatShouldIWear(temp: Int) {
    let randomTemp: Int = temp
    switch randomTemp {
    case 0..<25: print("Forget clothes, you're basically a popscicle.")
    case 25...32: print("It's freezing. Put on a parka plus hat and gloves.")
    case 33...68: print("It's a bit chilly. I recommend wearing a warm sweater.")
    case 69..<75: print("It's perfect t-shirt weather.")
    case 75...90: print("It is pretty hot today! Shorts will help.")
    default: print("Don't even bother to go out there!")
    }
}

whatShouldIWear(temp: randomTemp0)
whatShouldIWear(temp: randomTemp1)
whatShouldIWear(temp: randomTemp2)

/*
 In the editor we have a dictionary that contains a three letter country code as a key and that country's capital city as the associated value.
 
 We also have three empty arrays, europeanCapitals, asianCapitals, and otherCapitals. The goal is to iterate through the dictionary and end up with just the names of the capital cities in the relevant array.
 
 For example, after you execute the code you write, europeanCapitals will have the values ["Vaduz", "Brussels", "Sofia"] (not necessarily in that order).
 
 To do this you're going to use a switch statement and switch on the key. For cases where the key is a European country, append the value (not the key!) to the europeanCapitals array. For keys that are Asian countries, append the value to asianCapitals and finally for the default case, append the values to otherCapitals.
 */

var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"]

for (key, value) in world {
    // Enter your code below
    switch key {
    case "BEL", "LIE", "BGR" : europeanCapitals.append(value)
    case "IND", "VNM" : asianCapitals.append(value)
    default : otherCapitals.append(value)
    }
    // End code
}
print(europeanCapitals, asianCapitals, otherCapitals)

/*
 Enter your FizzBuzz solution here! Before you hit submit, make the following changes:
 
 Step 1: Enter your code in between the comments shown below. The code is going inside a "function" that will help verify your solution.
 
 Step 2: Change your variable/constant name that you are checking in each step to n. For example if (n % 3 == 0). Note: You don't need to create n, it is already provided.
 
 Step 3: Change all your print statements to return statements. For example: print("FizzBuzz") becomes return "FizzBuzz".

 */

func fizzBuzz(n: Int) -> String {
    // Enter your code between the two comment markers
    var result: String = ""
    if n % 3 == 0 && n % 5 == 0 {
        result = "FizBuzz"
    } else if n % 3 == 0 {
        result = "Fizz"
    } else if n % 5 == 0 {
        result = "Buzz"
    } else {
        result = String(n)
    }
    // End code
    return result
}

for i in 1..<100 {
    print(fizzBuzz(n: i))
}











































