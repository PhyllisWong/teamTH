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
// the =+ operator is great for adding multiple items
todo += ["buy groceries", "respond to emails"]

print(todo)

