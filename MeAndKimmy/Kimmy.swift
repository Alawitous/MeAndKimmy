//
//  Kimmy.swift
//  MeAndKimmy
//
//  Created by Marcus Dunlap on 1/15/15.
//  Copyright (c) 2015 Marcus Dunlap. All rights reserved.
//

import Foundation
import UIKit

struct Kimmy {
    
    var image = UIImage(named: "")
    var name = ""
    var age = 0
    var scene = ""
    
    func sheIsMy (currentName : String) -> String {
        let newName = currentName + " SHE IS MY LOVE"
        
        return newName
    }
    
    func randomFact () ->String {
        let randomNum = Int(arc4random_uniform(UInt32(3)))
        var randomFact:String

        if randomNum == 0{
            randomFact = "Kimmy The Pooh has a very beauitful smile"
        }
        else if randomNum == 1{
            randomFact = "Crystal's sex game is on point, im trying to get some of that tonight"
        }
        else {
            randomFact = "Kimmy got some tig ol bitty's"
        }
        return randomFact
    }
    
    
}