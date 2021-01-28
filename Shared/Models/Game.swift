//
//  Game.swift
//  Bullseye (iOS)
//
//  Created by Andres David Serrano Vivas on 28/01/21.
//

import Foundation

struct Game {
    var target  = Int.random(in: 1..<100)
    var score = 0
    var round = 1
    
     func points(siderValue:Int) ->  Int {
        100 - abs(self.target - siderValue)
    }
}
