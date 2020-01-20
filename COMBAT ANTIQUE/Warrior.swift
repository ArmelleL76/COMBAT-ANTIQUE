//
//  Warrior.swift
//  COMBAT ANTIQUE
//
//  Created by macmini-Armelle on 20/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Warrior{
    var fighterName : String
    var arm : Arm
    var life : Int
    let fighter : WarriorType
    
    init ( fighterName : String, fighter : WarriorType)
    {
        self.fighterName = fighterName
        self.fighter = fighter
        switch self.fighter {
        case .viking :
            self.arm = Ax()
            self.life = 90
        case .gladiator :
            self.arm = BroadSword()
            self.life = 110
        case .knight :
            self.arm = Sword()
            self.life = 80
        }
    }
       
func receiveDamage(damage : Int){
            self.life = self.life - damage
      //If life turns into negative value, life will be equal to zero
    if self.life < 0
            {
                self.life = 0
            }
        }
        
        
        
func fightAgainst(fighter : Warrior)
        {
            fighter.receiveDamage(damage : self.arm.damage)
        }
func increasePowerArm ()
        {self.arm.damage += 8}
        
        func description() {
            print("Arm : \(self.arm)" + "   Life : \(self.life)" + "   Damages : \(self.arm.damage)")
        }
    func cureOneself(){
        self.life +=  10 }
    
    
}

