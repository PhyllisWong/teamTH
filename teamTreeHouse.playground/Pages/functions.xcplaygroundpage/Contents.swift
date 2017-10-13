//: [Previous](@previous)

import UIKit

func area(length: Int, width: Int) -> Int {
    let areaOfRoom = length * width
    return areaOfRoom
}

let areaOfFirstRoom = area(length: 10, width: 12)
let areaOfSecondRoom = area(length: 15, width: 22)

func carpetCostHaving(length: Int, width: Int, carpetColor color: String = "tan") -> (price: Int, carpetColor: String) {
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
    print(price, color)
    return (price, color)
}

let result = carpetCostHaving(length: 10, width: 20)
print(result.price)
print(result.carpetColor)
//print("hello world")

func arrModifier(array: [Int]) {
    var arrOfInts = array
    arrOfInts.append(5)
    var secondArrOfInts = arrOfInts
}

var arrOfInts = [1, 2, 3, 4]
arrModifier(array: arrOfInts)

func coordinates(for location: String) -> (Double, Double) {
    var latLon = (0.0, 0.0)
    
    switch location {
    case "Eiffel Tower" : latLon = (48.8582, 2.2945)
    case "Great Pyramid" : latLon =  (29.9792, 31.1344)
    case "Sydney Opera House" : latLon =  (33.8587, 151.2140)
    default : break
    }
    return latLon
}

coordinates(for: "Eiffel Tower")






