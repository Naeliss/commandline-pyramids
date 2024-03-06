//
//  pyramidCreator.swift
//  pyramids
//
//  Created by Niels Jaspers on 06/03/2024.
//

import Foundation

class Pyramid {
    var height: Int
    init(_ height: Int){
        self.height = height
    }
    
    func constructPyramid(pyramidHeight height: Int) -> String {
        self.height = height
        
        var h: Int = height
        
        var pyramid: String = ""
        
        if h <= 0 {
            return "/\\"
        }
        for index in 0 ..< h {
            for _ in 0 ..< h {
                pyramid.append(" ")
            }
            h -= 1
            pyramid.append("/")
            for _ in 0 ..< index{
                pyramid.append(" ")
                pyramid.append(" ")
            }
            pyramid.append("\\")
            pyramid.append("\n")
        }
        
        for _ in 0 ..< height*2+2{
            pyramid.append("-")
        }
        
        return pyramid
    }
}
