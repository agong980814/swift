//
//  StringAndCharacters.swift
//  
//
//  Created by LucisFerre0814 on 2017/6/19.
//
//

import Foundation

 let threeDoubleQuotes = """
 Escaping the first quote \"""
 Escaping all three quotes \"\"\"
 """
 
 let quotation = """
 The White Rabbit put on his spectacles. "Where shall I begin, please your Majesty?" he asked.
 "Begin at the beginning," the King said gravely, " and go on till you come to the end; then stop."
 """
 
 func generateQuotation() -> String {
 let quotation = """
 The White Rabbit put on his spectacles. "Where shall I
 begin,
 please your Majesty?" he asked.
 "Begin at the beginning," the King said gravely, " and go
 on
 till you come to the end; then stop."
 """
 return quotation
 }



var emptyString = ""
var anotherEmptyString = String()   //Initializer syntax

if emptyString.isEmpty {
    print("Nothing to see here")
}

for character in "Dog!" {
    print(character)
}
