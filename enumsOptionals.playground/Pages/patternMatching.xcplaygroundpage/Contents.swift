
enum Coin: Double {
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.10
    case quarter = 0.25
}

let wallet: [Coin] = [.penny, .nickel, .dime, .dime, .quarter, .quarter, .quarter, .dime, .nickel, .penny, .penny, .dime, .quarter, .nickel]

var count = 0
for coin in wallet {
    switch coin {
    case .quarter: count += 1
    default: continue
    }
}
count = 0

for case .quarter in wallet {
    count += 1
}

for coin in wallet {
    if case .nickel = coin {
        print("Not so much money")
    } else if case .dime = coin {
        print("Better than nothing")
    }
}

// Nil coalescing operator

let firstName: String? = "Phyllis"
let username = "pdubs"


// syntactic sugar
let displayName = firstName ?? username
 /* under the hood, this is what is happening, except using a constant
var displayName: String
if let name = firstName {
    displayName = name
} else {
    displayName = username
}
*/

print(displayName)






























