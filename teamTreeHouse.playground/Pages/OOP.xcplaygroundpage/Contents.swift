//: [Previous](@previous)
let x1 = 0
let y1 = 0

let coordinate1: (x: Int, y: Int) = (0, 0)
coordinate1.x

struct Point {
    let x: Int
    let y: Int
    
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    /// Returns the surrounding points in range of
    /// the current one
    func points(inRange range: Int = 1) -> [Point] {
        var results = [Point]()
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        return results
    }
}

let coordinatePoint = Point(x: 0, y: 0)
coordinatePoint.x
coordinatePoint.points()

let coordinatePoint2 = Point(x: 0, y: 0)

/*
 In this task, we're going to create our first struct. Declare a struct named User.
 
 Give it two constant stored properties - name of type String and age of type Int
 */

/// Set of rules for the user of the game
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

/*
 Given the struct below in the editor, we want to add a method that returns the person’s full name. Declare a method named fullName() that returns a string containing the person’s full name. Note: Make sure to allow for a space between the first and last name
 */


struct Person {
    let firstName: String
    let lastName: String
    
    func fullName() -> String {
        let fullName = "\(firstName) \(lastName)"
        return fullName
    }
}

let phyllis = Person(firstName: "Phyllis", lastName: "Wong")
print(phyllis.fullName())

/*
 Challenge Task 2 of 2
 
 Let's use the struct to create an instance of Person and assign it to a constant named aPerson. Assign any values you want to the first and last name properties.
 
 Once you have an instance, call the instance method and assign the full name to a constant named myFullName.
 */

let aPerson = Person(firstName: "Do0sh", lastName: "McGoo")
let myFullName = aPerson.fullName()
print(myFullName)

/*
 In the editor, I’ve declared a struct named RGBColor that models a color object in the RGB space.
 
 Your task is to write a custom initializer method for the object. Using the initializer assign values to the first four properties. Using the values assigned to those properties create a value for the description property that is a string representation of the color object.
 
 For example, given the values 86.0 for red, 191.0 for green, 131.0 for blue and 1.0 for alpha, each of the stored properties should hold these values and the description property should look like this:
 
 "red: 86.0, green: 191.0, blue: 131.0, alpha: 1.0"
 */

struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    let description: String
    
    // Add your code below
    
    init (red: Double, green: Double, blue: Double, alpha: Double) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
        description = "red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)"
    }
    
}

let myColor = RGBColor(red: 86.0, green: 191.0, blue: 131.0, alpha: 1.0)
print(myColor.description)

































