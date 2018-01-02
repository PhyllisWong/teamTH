import Foundation

protocol FullNameable {
    var fullName: String { get }
}

struct User : FullNameable {
    var fullName: String
}

let user = User(fullName: "Phyllis Wong")

struct Friend : FullNameable {
    let firstName: String
    let middleName: String
    let lastName: String

    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "Luanne", middleName: "Nicole", lastName: "Simcoe")
print(friend.fullName)


enum EmployeeType {
    case manager
    case traditional
}

protocol Payable {
    func pay() -> PayCheck
}

struct PayCheck {
    let base: Double
    let benefits: Double
    let deductions: Double
    let vacation: Double
}

class Employee {
    let name: String
    let address: String
    let startDate: Date
    let type: EmployeeType
    
    init(name: String, address: String, startDate: Date, type: EmployeeType) {
        self.name = name
        self.address = address
        self.startDate = startDate
        self.type = type
    }
}

class HourlyEmployee: Employee, Payable {
    var hourlyWage = 15.0
    var hoursWorked = 0.0
    let vacation = 0

    func pay() -> PayCheck {
        let base = hoursWorked * hourlyWage
        return PayCheck(base: base, benefits: 0, deductions: 0, vacation: 0)
    }
}

class SalariedEmployee: Employee, Payable {
    var salary = 50000.00
    var benefits = 1000.00
    var deductions = 0.0
    var vacation = 2.0
    
    func pay() -> PayCheck {
        let monthly = salary/12
        return PayCheck(base: monthly, benefits: benefits, deductions: deductions, vacation: vacation)
    }
}

func pay(employee: Payable) {
    employee.pay()
}

let employee = SalariedEmployee(name: "Phyllis", address: "someAddress", startDate: Date(), type: .traditional)

let decemberPay = pay(employee: employee)
print(decemberPay)


// Losely related types
protocol Blendable {
    func blend()
}

class Fruit: Blendable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func blend() {
        print("I'm mush")
    }
}

class Dairy {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// Subclasses of Dairy
class Cheese: Dairy {}

class Milk: Dairy, Blendable {
    func blend() {
        print("I haven't changed at all!")
    }
}

func makeSmoothie(with ingredients: [Blendable]) {
    for ingredient in ingredients {
        ingredient.blend()
    }
}

let strawberry = Fruit(name: "Strawberry")
let cheddar = Cheese(name: "Cheddar")
let chocoMilk = Milk(name: "Chocolate")

let ingredients: [Blendable] = [strawberry, chocoMilk]

makeSmoothie(with: ingredients)

// random number generator

protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
        return lastRandom/m
    }
}

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

var dice6 = Dice(sides: 6, generator: LinearCongruentGenerator())
print(dice6.roll())














































