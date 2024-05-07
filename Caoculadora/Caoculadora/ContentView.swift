//
//  ContentView.swift
//  Caoculadora
//
//  Created by mih on 07/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var years: Int? = nil
    @State var months: Int? = nil

    
    var body: some View {
        VStack (spacing: 24) {
            ZStack {
                Rectangle()
                    .ignoresSafeArea(.all)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(height: 140)
                HStack (spacing: 16) {
                    Image(systemName: "pawprint.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .padding(.top, 60)
                    Text("Cãoculadora")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.top, 60)
                    Spacer()
                }
                .padding(20)
            }
                VStack(alignment: .leading, spacing: 32) {
                    Text("*Samuel* tem: \(Double(years ?? 0) + Double(months ?? 0)/12) anos, um idoso!")
                    Text("Qual a idade do seu cão?")
                        .font(.title2)
                        .fontWeight(.bold)
                    VStack (alignment: .leading, spacing: 8) {
                        Text("Anos")
                            .font(.headline)
                        TextField("", value: $years, format: .number)
                    }
                    VStack (alignment: .leading, spacing: 8) {
                        Text("Meses")
                            .font(.headline)
                        TextField("Digite os meses aqui", value: $months, format: .number)
                }
            }
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
            .padding()
            HStack {
                Image(systemName: "dog.fill")
                    .resizable()
                    .frame(width: 80, height: 72)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 32, height: 30)
                    .foregroundColor(.blue)
                Image(systemName: "dog.fill")
                    .resizable()
                    .frame(width: 80, height: 72)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .scaleEffect(x: -1, y: 1)
            }
            Image(.doggo)
                .resizable()
                .frame(width: 160, height: 160)
                .cornerRadius(20)
            ZStack {
                Capsule()
                    .frame(width: 160, height: 32)
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
