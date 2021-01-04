//
//  NextButton.swift
//  PetProj_Cars
//
//  Created by  Denis on 28.12.2020.
//

import SwiftUI

//Model to display switch to next page button
struct NextButton: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white.opacity(0.3))
                .frame(width: 125, height: 125, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(40)
            Rectangle()
                .fill(Color.black.opacity(0.8))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(30)
            Image(systemName: "chevron.right")
                .foregroundColor(.white)
                .scaleEffect(1.4)
        }
    }
}

//Model to display switch to previous page button
struct BackButton: View {
    var borderColor : Color
    var body: some View {
        Image(systemName: "chevron.backward")
            .foregroundColor(borderColor)
            .frame(width: 70, height: 70)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(borderColor.opacity(0.8), lineWidth: 1))
    }
}
