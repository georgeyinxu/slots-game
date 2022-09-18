//
//  ContentView.swift
//  slots-game
//
//  Created by George Yin Xu on 18/9/22.
//

import SwiftUI

struct ContentView: View {
          
    @State var firstSlot = 1
    @State var secondSlot = 1
    @State var thirdSlot = 1
    @State var credits = 1000
          
    var body: some View {
        VStack {
            Text("SwiftUI Slots!")
                  .font(.largeTitle)
                  .fontWeight(.bold)
                  
          Spacer()
                  
            Text("Credits: " + String(credits))
                  
          Spacer()
                  
            HStack {
                Image("fruit\(firstSlot)")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                Image("fruit\(secondSlot)")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                Image("fruit\(thirdSlot)")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
            }
                  
          Spacer()
                  
          Button("Spin", action: {
                    firstSlot = Int.random(in: 1...3)
                    secondSlot = Int.random(in: 1...3)
                    thirdSlot = Int.random(in: 1...3)
                    
                    if (firstSlot == secondSlot && secondSlot == thirdSlot) {
                              credits += 25
                    } else {
                              credits -= 15
                    }
          })
                .frame(width: 80.0, height: 30.0)
                .foregroundColor(Color.white)
                .background(Color.red)
                .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                .padding()
                  
          Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
