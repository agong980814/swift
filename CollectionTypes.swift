//
//  CollectionTypes.swift
//  
//
//  Created by LucisFerre0814 on 2017/6/23.
//
//

import Foundation

var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)
someInts = []

var threeDoubles = Array(repeating: 0.0, count: 3)
//of type [Double]


var anotherThreeDoubles = Array(repeating:2.5, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles

var shoppingList: [String] = ["Eggs", "Milk"]
// same as 
var shoppingList = ["Eggs", "Milk"]

if shoppingList.isEmpty {
    print("The shopping list is empty")
}

shoppingList.append("Flour")

shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]

shoppingList[0] = "Six eggs"
// when you use subscript syntax, the index you specify needs to be valid
shoppingList[4...6] = ["Bananas", "Apples"]
// you ca nalso use subscript syntax to change a range of values at once
// even if the replacement set of values has a different length than the range you are replacing

shoppingList.insert("Maple Syrup", at: 0)

let mapleSyrup = shoppingList.remove(at: 0)

let apples = shoppingList.removeLast()

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index+1): \(value)")
}
// for each item in the array, the enumerated() method returns a tuple composed of an integer and the item



// Sets: store DISTINCT values of the same type in a collection with no defined ordering
// use a set instead of an arry when the order of items is not important, or when you need to ensure that an item only appears once





