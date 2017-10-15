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

// Custom class using Struct type Point
class Enemy {
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife(by factor: Int) {
        life -= factor
    }
}

/*
 Let's get in some practice creating a class. Declare a class named Shape with a variable property named numberOfSides of type Int.
 
 Remember that with classes you are required to write an initializer method.
 
 Once you have a class definition, create an instance and assign it to a constant named someShape.
 */

class Shape {
    var numberOfSides: Int
    
    init(numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }
}

let someShape = Shape(numberOfSides: 4)

class Tower {
    let position : Point
    var range: Int = 1
    var strength: Int = 1
    
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func fire(at enemy: Enemy) {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: self.strength)
            print("Gotcha")
        } else {
            print("Darn, out of range")
        }
    }
    
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = position.points(inRange: range)
        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y {
                return true
            }
        }
        return false
    }
}

let tower = Tower(x: 0, y: 0)
let enemy = Enemy(x: 1, y: 1)
tower.fire(at: enemy)

let tower2 = Tower(x: 2, y: 2)
let enemy2 = Enemy(x: 4, y: 4)
tower2.fire(at: enemy2)





/*
 In the editor you've been provided with a struct named Location that models a coordinate point using longitude and latitude values.
 
 For this task we want to create a class named Business. The class contains two constant stored properties: name of type String and location of type Location.
 
 In the initializer method pass in a name and an instance of Location to set up the instance of Business. Using this initializer, create an instance and assign it to a constant named someBusiness.
 
 */

struct Location {
    let latitude: Double
    let longitude: Double
}

class Business {
    let name: String
    let location: Location
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.location = Location(latitude: latitude, longitude: longitude)
    }
}

let someBusiness = Business(name: "some business", latitude: 488.0, longitude: 12.45)




























