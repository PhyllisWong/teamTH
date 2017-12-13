import UIKit
// Error prone code using primitive data types

//let week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

func dayType(for day: String) -> String {
    switch day {
    case "saturday", "sunday": return "weekend"
    case "monday", "tuesday", "wednesday", "thursday", "friday": return "weekday"
    default: return "this isn't a valid day"
    }
}

func isNotificationMuted(on day: String) -> Bool {
    if day == "weekend" {
        return true
    } else {
        return false
    }
}

enum Day: String {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

Day.friday.rawValue

enum DayType {
    case weekday
    case weekend
}

func dayType(for day: Day) -> DayType {
    switch day {
    case .saturday, .sunday: return .weekend
    default: return .weekday
    }
}


func isNotificationMuted(on type: DayType) -> Bool {
    switch type {
    case .weekend:
        return true
    case .weekday:
        return false
    }
}

let result = dayType(for: .friday)
let type = dayType(for: .sunday)
let isMuted = isNotificationMuted(on: result)
let isMuted2 = isNotificationMuted(on: type)

class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

enum Direction {
    case left
    case right
    case up
    case down
}

class Robot {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(_ direction: Direction) {
        // Enter your code below
        switch direction {
        case .up: location.y = location.y+1
        case .down: location.y = location.y-1
        case .left: location.x = location.x-1
        case .right: location.x = location.x+1
        }
    }
}


enum MobilePhone {
    case iphone(String)
    case android(String)
    case windowsPhone(String)
}

let iphone = MobilePhone.iphone("7 Plus")
print(iphone)



enum ColorComponent {
    case rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    case hsb(CGFloat, CGFloat, CGFloat, CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .rgb(let red, let green, let blue, let alpha):
            return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        case .hsb(let hue, let saturation, let brightness, let alpha):
            return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
        }
    }
}

print(ColorComponent.rgb(red: 61.0, green: 120.0, blue: 198.0, alpha: 1.0).color())
ColorComponent.hsb(100.0, 115.0, 100.0, 1.0)

// Optionals

struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
//    func fullName(firstName: String, middleName: String?, lastName: String) -> String {
//        guard let middleName = middleName else {return}
//        let fullName = "\(firstName) \(middleName) \(lastName)"
//        return fullName
//    }
}

let me = Person(firstName: "Phyllis", middleName: "Marie", lastName: "Wong")


let airportCodes = ["CDG": "Chales del Gaulle"]
if let newYorkAirport = airportCodes["JFK"] {
    print(newYorkAirport)
} else {
    print("that key does not exist")
}

let weatherDictionary: [String : [String : String]] = [
    "currently" : ["temperature" : "22.3"],
    "daily" : ["temperature" : "22.3"],
    "weekly" : ["temperature" : "22.3"]
]

if let dailyWeather = weatherDictionary["daily"] {
    if let highTemp = dailyWeather["temperature"] {
        print(highTemp)
    }
}

if let dailyWeather = weatherDictionary["daily"], let highTemperature = dailyWeather["temperature"] {
    print(highTemperature)
}

let movieDictionary = ["Spectre": ["cast": ["Daniel Craig", "Christoph Waltz", "Léa Seydoux", "Ralph Fiennes", "Monica Bellucci", "Naomie Harris"]]]

var leadActor: String = ""

// Enter code below
if let movie = movieDictionary["Spectre"], let actors = movie["cast"] {
        leadActor = actors[0]
        print(leadActor)
    }

// Downsides to using If Let

struct Friend {
    let name : String
    let age : String
    let address : String?
}

func new(friendDictionary: [String : String]) -> Friend? {
    if let name = friendDictionary["name"],
        let age = friendDictionary["age"],
        let address = friendDictionary["address"] {
        return Friend(name: name, age: age, address: address)
    } else {
        return nil
    }
}

func new2(friendDictionary: [String : String]) -> Friend? {
    if let name = friendDictionary["name"], let age = friendDictionary["age"] {
        let address = friendDictionary["address"]
        return Friend(name: name, age: age, address: address)
    } else {
        return nil
    }
}

// early exit

func newFriend(friendDictionary: [String : String]) -> Friend? {
    guard let name = friendDictionary["name"], let age = friendDictionary["age"] else {return nil}
    let address = friendDictionary["address"]
    return Friend(name: name, age: age, address: address)
}

let phyllis = Friend(name: "dj chai", age: "42", address: nil)


print(phyllis.age)











