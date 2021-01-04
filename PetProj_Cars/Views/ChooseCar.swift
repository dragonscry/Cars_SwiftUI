//
//  ChooseCar.swift
//  PetProj_Cars
//
//  Created by  Denis on 28.12.2020.
//

import SwiftUI

struct ChooseCar: View {
    var width = UIScreen.main.bounds.width
    //Type of Car (for horizontal scrollView) now only for visual selection
    var types = ["Sports", "Cruise", "Grounded", "Sedans"]
    
    //Text show how many cars we have
    var text = Text("\(MOCK_CAR.count) cars")
        .foregroundColor(Color.white)
        .font(.system(size: 20, weight: .bold, design: .rounded))
    
    // Default state variable
    @State var stateButton = "Sports"
    
    @EnvironmentObject var plus : Increment
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .scaleEffect(2)
                .offset(y:-200)
                .blur(radius: 20)
                .frame(width: width)
            VStack{
                
                //Header with previous button and skip button
                HStack{
                    Button(action: {plus.decr()}, label: {
                        BackButton(borderColor: Color.white)
                    })
                    Spacer()
                    Button(action: {plus.incr()}, label: {
                        Text("Skip")
                            .foregroundColor(.white)
                            .font(.system(size: 20, design: .rounded))
                    })
                }
                .padding([.leading, .trailing], 20)
                .padding(.top, 0)
                
                HStack {
                    Text("Choose a car")
                        .foregroundColor(Color.white)
                        .font(.system(size: 36, weight: .semibold, design: .rounded))
                    Spacer()
                }
                .padding(.leading, 20)
                .padding(.top, 10)
                
                //ScrollView with Car Types (only visual)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 20){
                        ForEach(types, id: \.self) {type in
                            Button(action: {self.stateButton = type}, label: {
                                ZStack {
                                    Text(type)
                                        .foregroundColor(self.stateButton == type ? .black : .white)
                                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                                        .padding([.leading, .trailing], 30)
                                        .padding([.bottom, .top], 20)
                                        .background(self.stateButton == type ? Color.white : Color.clear)
                                        .cornerRadius(20)
                                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white.opacity(0.8), lineWidth: 1))
                                }
                            })
                        }
                    }
                    .padding(.leading, 20)
                }
                
                HStack {
                    Text("There are \(text) for you!")
                        .foregroundColor(Color.white.opacity(0.6))
                        .font(.system(size: 20, design: .rounded))
                    Spacer()
                }
                .padding(.leading, 20)
                .padding(.top, 15)
                
                //Vertical Scroll with Car's Cards
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 17){
                        ForEach(MOCK_CAR, id: \.self.id) { car in
                            CarCard(car: car)
                        }
                    }
                    
                }
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ChooseCar_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCar()
    }
}

