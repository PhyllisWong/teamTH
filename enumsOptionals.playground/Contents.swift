// Error prone code using primitive data types

//let week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

//func dayType(for day: String) -> String {
//    switch day {
//    case "saturday", "sunday": return "weekend"
//    case "monday", "tuesday", "wednesday", "thursday", "friday": return "weekday"
//    }
//}

//func isNotificationMuted(on day: String) -> Bool {
//    if day == "weekend" {
//        return true
//    } else {
//        return false
//    }
//}

enum Day {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

enum DayType {
    case weekday
    case weekend
}

func dayType(for day: Day) -> DayType {
    switch day {
    case Day.saturday, Day.sunday: return DayType.weekend
    case Day.monday, Day.tuesday, Day.wednesday, Day.thursday, Day.friday: return DayType.weekday
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

let result = dayType(for: Day.friday)
let isMuted = isNotificationMuted(on: result)





















