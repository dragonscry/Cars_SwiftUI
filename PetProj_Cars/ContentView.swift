//
//  ContentView.swift
//  PetProj_Cars
//
//  Created by  Denis on 28.12.2020.
//

import SwiftUI

struct ContentView: View{
    var width = UIScreen.main.bounds.width
    @EnvironmentObject var plus : Increment
    var body: some View {
        ZStack {
            //Condition to display screens
            HStack(spacing:0) {
                if plus.state == 0 {
                    StartPage()
                }
                else if plus.state == 1 {
                    ChooseCar()
                }
                else {
                    ChoosePlace()
                }
            }
            //Button to switch next page
            VStack {
                Spacer()
                Button(action: {
                    plus.incr()
                }, label: {
                    NextButton()
                })
                .padding(.bottom, 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Increment())
    }
}



