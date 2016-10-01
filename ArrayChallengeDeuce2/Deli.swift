//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
        
        // TODO: Implement this function.
        var gretting = ""
        
        if name == "Billy Crystal" {
            line.insert(name, at: 0)
            gretting = "Welcome \(name)! You can sit wherever you like."
        }
        else if name == "Meg Ryan" {
            line.insert(name, at: 0)
            gretting = "Welcome \(name)! You can sit wherever you like."
        }
        else if line.count == 0 {
            line.append(name)
            gretting = "Welcome \(name), you're first in line!"
        }
        else {
            line.append(name)
            gretting = "Welcome \(name), you're number \(line.count) in line."
        }
        return gretting
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        var serving = ""
        
        if line.isEmpty {
            serving = "There is no one to be served."
        }
        else {
            serving = "Now serving \(line[0])!"
            line.removeFirst()
        }
        
        return serving
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        var finalLine = ""
        var varLine = ""
        
        if line.isEmpty {
            finalLine = "The line is currently empty."
        }
        else {
            for (index,name) in line.enumerated() {
                varLine += "\n\(index + 1). \(name)"
            }
            finalLine = "The line is:\(varLine)"
        }
        return finalLine
    }
}

