//: [Previous](@previous)
let x1 = 0
let y1 = 0

let coordinate1: (x: Int, y: Int) = (0, 0)
coordinate1.x

struct Point {
    let x: Int
    let y: Int
}

let coordinatePoint = Point(x: 0, y: 0)
coordinatePoint.x

/*
 In this task, we're going to create our first struct. Declare a struct named User.
 
 Give it two constant stored properties - name of type String and age of type Int
 */

struct User {
    let name: String
    let age: Int
}

/*
 Struct definitions are simply blueprints and to use them we need to create an instance. I've declared a struct in the editor.
 
 Create an instance of the struct and assign the values "Animal Farm", "George Orwell" and 6.00 to the title, author and price properties respectively.
 
 Assign this instance to a constant named myBook.
 */

struct Book {
    let title: String
    let author: String
    let price: Double
}

// Enter your code below

let myBook = Book(title: "Animal Farm", author: "George Orwell", price: 6.00)












