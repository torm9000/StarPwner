//
//  Item.swift
//  StarPwner
//
//  Created by Thomas Kiely on 3/29/20.
//  Copyright © 2020 Thomas Kiely. All rights reserved.
//

import UIKit

class Item : NSObject, NSCoding{
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
        self.init(name:"Enter Star Name",size:1,mass:1)
        
    }
    
    func encode(with aCoder: NSCoder) {
     aCoder.encode(name, forKey: "name")
     aCoder.encode(dateCreated, forKey: "dateCreated")
     aCoder.encode(mass,forKey: "mass")
     aCoder.encode(size, forKey: "size")
    }
    
    required init(coder aDecoder: NSCoder) {
     name = aDecoder.decodeObject(forKey: "name") as! String
     dateCreated = aDecoder.decodeObject(forKey: "dateCreated") as! Date
     mass = aDecoder.decodeInteger(forKey: "mass")
     size = aDecoder.decodeInteger(forKey: "size")
     super.init()
    }
}
