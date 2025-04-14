//
//  ContentView.swift
//  War-Card-Game
//
//  Created by Raghuram Duvvuri on 3/30/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {

        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }.padding()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                
                VStack {
                    HStack {
                        Spacer()
                        Text("Player")
                            .font(.title2)
                        Spacer()
                        Text("CPU")
                            .font(.title2)
                        Spacer()
                    }.padding()
                    
                    HStack {
                        Spacer()
                        Text(String(playerScore))
                            .font(.largeTitle)
                        Spacer()
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        Spacer()
                    }
                    .padding()
                    
                }
                .foregroundColor(Color.white)
                .fontWeight(.bold)
            }
            
        }
    }
    
    
    func deal() {
        let pCardValue = Int.random(in: 2...14)
        let cCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(pCardValue)
        cpuCard = "card" + String(cCardValue)
        
        if pCardValue > cCardValue {
            playerScore+=1
        }
        
        if cCardValue > pCardValue {
            cpuScore+=1
        }

    }
    
    
}

#Preview {
    ContentView()
}
