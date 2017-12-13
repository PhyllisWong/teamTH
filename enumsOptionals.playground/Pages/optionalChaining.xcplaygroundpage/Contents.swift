//: [Previous](@previous)

import Foundation

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
}

class Residence {
    var numberOfRooms = 1
    var address: Address?
}

class Person {
    var residence: Residence?
}

let phyllis = Person()
let address = Address()
address.street = "123 Something Drive"
address.buildingName = "Building"
address.buildingNumber = "10"

let residence = Residence()
residence.address = address

phyllis.residence = residence
let phyllisBuilding = phyllis.residence?.address?.buildingName

if let phyllisBuilding = phyllisBuilding {
    print(phyllisBuilding)
}


