//
//  Item.swift
//  secApp
//
//  Created by Nikolas Ponomarov on 18.08.17.
//  Copyright © 2017 Nikolas Ponomarov. All rights reserved.
//

import Foundation

class Item: NSObject, NSCoding {
    
    var name: String
    
    static let Dir = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = Dir.appendingPathComponent("items")
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let name = aDecoder.decodeObject(forKey: "name") as! String
        self.init(name: name)
    }
    
    init?(name: String) {
        self.name = name
        super.init()
    }

}
