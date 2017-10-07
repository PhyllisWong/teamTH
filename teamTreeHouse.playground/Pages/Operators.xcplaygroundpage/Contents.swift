// Binary Operators

let height = 12 // in ft
let width:Int = 10 // in ft


let area = height * width // Area in sq ft

// 1 sq meter = 1 sq foot / 10.764

let areaInMeters = Double(area)/10.764 // Cast area as a Double to perform task

// Equals Operator (Note: Different from assignment operator)
let str1 = "Hello!"
let str2 = "Hello!"
let str3 = "Hello"

str1 == str2
str1 == str3

str1 != str2
str1 != str3

// Operator precedence
var x = (100 + 100) - (((5 * 2) / 3) % 7)
let a = (2 + 2) * 2 + 2
let y = 25 - 5 * 2 + 5
let z = 5 + 5 - 5 * 2

let on = true
let off = !on

