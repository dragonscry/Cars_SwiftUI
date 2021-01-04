//
//  CarCard.swift
//  PetProj_Cars
//
//  Created by  Denis on 29.12.2020.
//

import SwiftUI

//its where we can custom our car's cards
//it has white background, when you need to make changes
//you can place Color.black as a background

struct CarCard: View {
    
    var car : Car
    
    @State var favorite = false
    var body: some View {
        ZStack{
                Spacer()
                    .frame(width: 350, height: 230)
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(30)
                VStack(spacing: 0){
                    ZStack {
                        Image(car.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 230, height: 170)
                            .padding(.bottom,0)
                        HStack {
                            Spacer()
                            Button(action: {favorite = !favorite}, label: {
                                Image(systemName: !favorite ? "heart" : "heart.fill")
                                    .foregroundColor(.black)
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .scaleEffect(1.5)
                            })
                            .padding(.trailing, 50)
                            .padding(.bottom, 70)
                        }
                        .padding(.top, 20)
                        
                    }
                    Text(car.name)
                        .font(.system(size: 28, weight: .semibold, design: .rounded))
                    Text("$\(car.price) / day")
                        .font(.system(size: 20, weight: .light, design: .rounded))
                        .foregroundColor(Color.black.opacity(0.7))
                }.padding(.bottom, 30)
            }
    }
}

struct CarCard_Previews: PreviewProvider {
    static var previews: some View {
        CarCard(car: MOCK_CAR[3])
    }
}
