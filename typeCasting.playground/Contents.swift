class Employee {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class HourlyEmployee: Employee {
    let hourlyWage: Double
    
    init(name: String, hourlyWage: Double) {
        self.hourlyWage = hourlyWage
        super.init(name: name)
    }
    
    func payWages(for hours: Double) -> Double {
        return hourlyWage * hours
    }
}

class SalariedEmployee: Employee {
    let salary: Double
    
    init(name: String, salary: Double) {
        self.salary = salary
        super.init(name: name)
    }
    
    func paySalary() -> Double {
        return salary/24
    }
}

let hourlyEmployee = HourlyEmployee(name: "Taylor", hourlyWage: 12.00)
let salariedEmployee = SalariedEmployee(name: "Lorenzo", salary: 62000)

let employees = [hourlyEmployee, salariedEmployee]

for employee in employees {
    if employee is HourlyEmployee {
        // Optional binding style
        if let hourlyEmployee = employee as? HourlyEmployee {
            hourlyEmployee.payWages(for: 40)
        }
    }
    if employee is SalariedEmployee {
        // Optional chaining style
        let salariedEmployee = employee as? SalariedEmployee
        salariedEmployee?.paySalary()
    }
}










