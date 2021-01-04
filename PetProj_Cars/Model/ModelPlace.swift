//
//  ModelPlace.swift
//  PetProj_Cars
//
//  Created by  Denis on 29.12.2020.
//
import Foundation
import SwiftUI

//Struct for Place's Card

struct ModelPlace {
    var image: String
    var name: String
    var country: String
}

var MOCK_PLACE : [ModelPlace] = [
    .init(image: "landscape", name: "Hills of Death", country: "Bali Island"),
    .init(image: "holm", name: "Tomb of Health", country: "Urugvay"),
    .init(image: "landscape", name: "Need for Speed", country: "Hungray"),
    .init(image: "holm", name: "Tramps Truth", country: "Foreo Island"),
    .init(image: "landscape", name: "Sorry nothing important", country: "Romania")
]

