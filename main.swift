//
//  main.swift
//  pyramids
//
//  Created by Niels Jaspers on 06/03/2024.
//

import Foundation

print("How tall will the pyramid be: ", terminator: " ")
var input: String? = readLine()

if let input: String = input, let inputVal = Int(input){
    let userPyramid: Pyramid = Pyramid.init(inputVal)
    print(userPyramid.constructPyramid(pyramidHeight: inputVal))
    
}
else{
    print("Invalid Input.")
}
