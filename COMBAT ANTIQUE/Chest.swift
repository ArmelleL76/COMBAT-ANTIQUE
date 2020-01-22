//
//  Chest.swift
//  projet3 essais
//
//  Created by macmini-Armelle on 07/12/2019.
//  Copyright © 2019 armellelecerf. All rights reserved.
//

import Foundation
class Chest{
    var randomStrenght : Int
    init(randomStrenght : Int)
    {self.randomStrenght = randomStrenght}
    func appear()->Bool{
        let random = Int.random(in: 1..<7)
        if random % 2 == 0 {
            print("A chest has appeared\n")
            print("The chest contains a random Arm of strenght : \(randomStrenght)\n)")
            return true
        }
        else {return false}
     
    }
    func armStrenght()->Int{
        let randomInteger = Int.random(in: 8..<21)
        self.randomStrenght = randomInteger
        
        
        return randomInteger
    }
    func exchange()->Int{
        var damage : Int = 10
         damage = self.armStrenght()
    return damage
    
    }
}
