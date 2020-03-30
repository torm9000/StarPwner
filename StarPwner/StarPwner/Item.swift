//
//  Item.swift
//  StarPwner
//
//  Created by Thomas Kiely on 3/29/20.
//  Copyright © 2020 Thomas Kiely. All rights reserved.
//

import UIKit

class Item : NSObject{
    var name : String
    var size : Int
    var mass : Int
    let dateCreated : Date
    
    
    init(name: String, size : Int , mass: Int) {
    self.name = name
    self.size = size
    self.mass = mass
    self.dateCreated = Date()
    super.init()
     }
    
    
    convenience init(random:Bool = false){
        if random{
            let starList = ["Betelgeuse","Sirius","Canopus"]
            
            var idx = arc4random_uniform(UInt32(starList.count))
            
            let randomStar = starList[Int(idx)]
            let randomSize =  Int(arc4random_uniform(100000))
            let randomMass = Int(arc4random_uniform(200000))
            
            self.init(name:randomStar,
                size:randomSize,
                mass: randomMass
                
            )
            
        }
        else{
            self.init(name:"",size:200,mass:300)
        }
    }
}
