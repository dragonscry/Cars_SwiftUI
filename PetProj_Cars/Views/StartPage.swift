//
//  StartPage.swift
//  PetProj_Cars
//
//  Created by  Denis on 28.12.2020.
//


import SwiftUI

//It's App's first page

struct StartPage: View {
    var width = UIScreen.main.bounds.width
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .scaleEffect(2)
                .offset(y:-200)
                .frame(width: width)
            VStack {
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text("Let's Start")
                            .foregroundColor(.white)
                            .font(.system(size: 42, weight: .bold, design: .rounded))
                            .padding(.leading, 30)
                        Spacer(minLength: 0)
                    }
                    HStack {
                        Text("Your Jorney")
                            .foregroundColor(.white)
                            .font(.system(size: 42, weight: .bold, design: .rounded))
                            .padding(.leading, 30)
                        Spacer(minLength: 0)
                    }
                    HStack{
                        Text("How many vacations per year do you have?")
                            .foregroundColor(.white)
                            .padding(.leading, 30)
                            .font(.system(size: 24, weight: .semibold, design: .rounded))
                            .lineSpacing(15.0)
                            .padding(.trailing, 40)
                    }
                    .padding(.top, 30)
                }
                
                //it's must be custom slider
                ZStack{
                    Spacer()
                        .frame(width: 350, height: 80)
                        .background(Color.white.blur(radius: 30))
                        .cornerRadius(30)
                        .padding(.top, 20)
                }
            }.padding(.top, 80)
        }
    }
}

struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
