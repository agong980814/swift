//
//  ErrorHandling.swift
//  
//
//  Created by LucisFerre0814 on 2017/6/23.
//
//

import Foundation

enum vendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

throw VendingMachineError.insufficientFunds(coinsNeeded: 5)

struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips":     Item(price: 10, count: 4),
        "Pretzels":  Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        /*
         use guard statements to exit the method early and throw appropriate errors if and of the requirements for purchasing a snack aren't met
        */
        
        
        
        
        
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob":   "Licorice",
    "Eve":   "Pretzels"
]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnaks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
    //because this vend(itemName:) method can throw an error, so its called with the try keyword in front of it
}

struct PurchasedSnack {
    let name: String
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemNamed: name)
        self.name = name
    }
}

/*
 The catch clauses don't have to handle every possible error that the code in its do clause can throw
 If none of the catch clauses handle the error, the error propagates to the surrounding scope
 */


var vendingMachine = VendingMachine()
vendingMaschind.coinsDeposited = 8
do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
} catch VendingMashineError.invalidSelection {
    print("Invalid Selection.")
} catch VendingMachineError.outOfStock {
    print("out of Stock.")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("Insufficient funds. Please insert and additional \(coinsNeeded) coins.")
}


func someThrowingFucntion() throws -> Int {
    //...
}

let x = try? someThrowingFunction()

let y: Int?
do {
    y = try someThrowingFunction()
} catch {
    y = nil
}


func fetchData() -> Data? {
    if let data = try? fetchDataFromDisk() { return data }
    if let data = try? fetchDataFromServer() { return data}
    return nil
}

//sometimes you know a throwing function of method won't throw an error at runtime
//on those ocacasions, you can write try! before the expression to disable error propagation and wrap the call in a runtime assertion that no error will be thrown

let photo = try! loadImage(atPath: "./Resources/John Appleseed.jpg")

//you use a defer statement to execute a set of statements just before code execution leaves the current block of code
func processFile(filename: String) throws {
    if exists(filename) {
        let file = open(filename)
        defer {
            close(file)
        }
        while let line = try file.readline() {
            //work with the file
        }
        //close(file) is called here, at the end of the scope
    }
}
//deferred actions are executed in reverse order of how they are specified - that is, the code in the first defer statement executes after code in the second, and so on



