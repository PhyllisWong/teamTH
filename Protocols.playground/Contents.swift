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
    
    func pay() -> PayCheck {
        return PayCheck(base: 0, benefits: 0, deductions: 0, vacation: 0)
    }
}

class HourlyEmployee: Employee {
    var hourlyWage = 15.0
    var hoursWorked = 0.0
    let vacation = 0
    
    override func pay() -> PayCheck {
        let base = hourlyWage * hoursWorked
        return PayCheck(base: base, benefits: 0, deductions: 0, vacation: 0)
    }
}

class SalariedEmployee: Employee {
    var salary = 50000.00
    var benefits = 1000.00
    var deductions = 0.0
    var vacation = 2
}

func pay(employee: Employee) {
    
}



























































