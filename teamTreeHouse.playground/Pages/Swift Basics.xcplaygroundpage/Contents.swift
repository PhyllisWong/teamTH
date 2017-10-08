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

print(todo)
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
print(todo)

// Removing items from Arrays
// not recommended for large data sets
todo.remove(at: 2)
print(todo)


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



































