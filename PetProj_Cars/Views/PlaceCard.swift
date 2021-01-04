//
//  PlaceCard.swift
//  PetProj_Cars
//
//  Created by  Denis on 29.12.2020.
//

import SwiftUI

//its where we can custom our place's cards

struct PlaceCard: View {
    var place : ModelPlace
    @State var opacity = false
    var body: some View {
        VStack{
            ZStack {
                Image(place.image)
                    .resizable()
                    .frame(width: 170, height: 200)
                    .cornerRadius(30)
                VStack {
                    HStack{
                        Spacer()
                        Image(systemName: "checkmark")
                            .padding()
                            .foregroundColor(opacity ? Color.white : Color.clear)
                            .background(opacity ? Color.black : Color.clear)
                            .clipShape(Circle())
                    }
                    Spacer()
                }
            }
            HStack {
                VStack(alignment: .leading) {
                    Text(place.name)
                        .font(.headline)
                    Text(place.country)
                        .font(.subheadline)
                }
                Spacer()
            }
            
        }
        .frame(width: 170, height: 250)
        .opacity(!opacity ? 0.6 : 1)
        .onTapGesture {
            opacity = !opacity
        }
    }
}

struct PlaceCard_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCard(place: MOCK_PLACE[1])
    }
}
