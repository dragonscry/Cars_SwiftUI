//
//  SwiftUIView.swift
//  PetProj_Cars
//
//  Created by  Denis on 29.12.2020.
//
import Foundation
import SwiftUI

//Struct describes Car for Car's Card

struct Car {
    var id: Int
    var name: String
    var imageName: String
    var price : Int
}

let MOCK_CAR : [Car] = [
    .init(id: 0, name: "AudiSport", imageName: "audi", price: 800),
    .init(id: 1, name: "Bmw Sedan", imageName: "bmw", price: 500),
    .init(id: 2, name: "Mercedes Cross", imageName: "mercedes", price: 600),
    .init(id: 3, name: "Mers tuned", imageName: "tuned", price: 1800)
    
]
