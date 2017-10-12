//: [Previous](@previous)

import UIKit

func area(length: Int, width: Int) -> Int {
    let areaOfRoom = length * width
    return areaOfRoom
}

let areaOfFirstRoom = area(length: 10, width: 12)
let areaOfSecondRoom = area(length: 15, width: 22)

func carpetCostHaving(length: Int, width: Int, carpetColor color: String = "tan") -> Int {
    // grey carpet - $1 p/sq ft
    // tan carpet - $2 p/sq ft
    // deep blue carpet - $4 p/sq ft
    
    let areaOfRoom = area(length: length, width: width)
    var price = 0
    
    switch color {
    case "grey" : price = areaOfRoom * 1
    case "tan" : price = areaOfRoom * 2
    case "blue" : price = areaOfRoom * 4
    default : price = 0
        
    }
    return price
}

carpetCostHaving(length: 10, width: 20)
