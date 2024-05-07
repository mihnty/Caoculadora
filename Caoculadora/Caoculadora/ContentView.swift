//
//  ContentView.swift
//  Caoculadora
//
//  Created by mih on 07/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing: 24) {
            ZStack {
                Rectangle()
                    .ignoresSafeArea(.all)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(height: 120)
                HStack (spacing: 16) {
                    Image(systemName: "dog.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .padding(.top, 40)
                    Text("Cãoculadora")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.top, 40)
                    Spacer()
                }
                .padding(20)
            }
            Text("AuAuAuAu!")
                .font(.largeTitle)
                .fontWeight(.bold)
            HStack {
                Image(systemName: "dog.fill")
                    .resizable()
                    .frame(width: 100, height: 88)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 32, height: 30)
                    .foregroundColor(.blue)
                Image(systemName: "dog.fill")
                    .resizable()
                    .frame(width: 100, height: 88)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .scaleEffect(x: -1, y: 1)
            }
            Text("*Bark Bark*")
            VStack {
                HStack {
                    Text("*Woof woof*:")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    Spacer()
                        .frame(height: 24)
                }
                .padding(.leading,20)
                RoundedRectangle(cornerRadius: 5)
                    .stroke(.blue, lineWidth: 2)
                    .frame(width: 344, height: 40)
                    .foregroundColor(.white)
                Spacer()
                    .frame(height: 24)
            }
            Image(.doggo)
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(20)
            ZStack {
                Capsule()
                    .frame(width: 160, height: 48)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("GROWL")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }
    }
}
#Preview {
    ContentView()
}
