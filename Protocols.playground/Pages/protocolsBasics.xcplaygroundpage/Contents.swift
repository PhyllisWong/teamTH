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
























































