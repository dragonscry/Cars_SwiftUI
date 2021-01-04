//
//  Increment.swift
//  PetProj_Cars
//
//  Created by  Denis on 29.12.2020.
//

import SwiftUI

//Variable that describes states of app's page

class Increment:ObservableObject{
    @Published var state = 0
    
    func incr(){
        if state == 2 {
            state = 2
        }
        else {
            state += 1
        }
    }
    
    func decr(){
        state -= 1
    }
}
