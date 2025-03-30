//
//  ContentView.swift
//  War-Card-Game
//
//  Created by Raghuram Duvvuri on 3/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                HStack {
                    Spacer()
                    Image("back")
                    Spacer()
                    Image("back")
                    Spacer()
                }.padding()
                
                Image("button")
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
                        Text("0")
                            .font(.largeTitle)
                        Spacer()
                        Text("0")
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
}

#Preview {
    ContentView()
}
