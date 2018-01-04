
struct Friend {
    let name: String
    let age: String
    let address: String?
}

enum FriendError: Error {
    case invalidData
}

func friend(from dict: [String : String]) throws -> Friend {
    guard let name = dict["name"], let age = dict["age"] else {
        // If error is thrown, function exits
        throw FriendError.invalidData
    }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}
