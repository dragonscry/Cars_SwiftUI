//
//  ChoosePlace.swift
//  PetProj_Cars
//
//  Created by  Denis on 28.12.2020.
//

import SwiftUI

//Page for choosing Place

struct ChoosePlace: View {
    var width = UIScreen.main.bounds.width
    @EnvironmentObject var plus : Increment
    
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        ZStack{
            VStack{
                
                //Header with Back button and Skip Button
                HStack{
                    Button(action: {plus.decr()}, label: {
                        BackButton(borderColor: Color.black)
                    })
                    Spacer()
                    Button(action: {plus.incr()}, label: {
                        Text("Skip")
                            .foregroundColor(.black)
                            .font(.system(size: 20, design: .rounded))
                    })
                }
                .padding([.leading, .trailing], 20)
                .padding(.top, 0)
                HStack{
                    Text("Choose places")
                        .font(.system(size: 36, weight: .semibold, design: .rounded))
                    Spacer()
                }
                .padding(.leading, 20)
                .padding(.top, 20)
                HStack{
                    Text("You can select several")
                        .font(.system(size: 20,design: .rounded))
                        .opacity(0.6)
                    Spacer()
                }
                .padding(.top, 10)
                .padding(.leading, 20)
                
                //Grid vith Places
                ScrollView{
                    LazyVGrid(columns: gridItems, spacing: 16){
                        ForEach(0..<MOCK_PLACE.count){ place in
                            PlaceCard(place: MOCK_PLACE[place])
                        }
                    }
                }
                Spacer()
            }
        }
        .frame(width: width)
    }
}

struct ChoosePlace_Previews: PreviewProvider {
    static var previews: some View {
        ChoosePlace()
    }
}
