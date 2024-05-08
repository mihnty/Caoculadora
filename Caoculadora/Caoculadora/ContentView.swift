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
    @State var result: Int?
    
    private var color: Color = .init(red: 0x4F/0xFF, green: 0x46/0xFF, blue: 0xE5/0xFF)
    
    var body: some View {
        VStack (spacing: 24) {
            ZStack {
                Rectangle()
                    .ignoresSafeArea(.all)
                    .foregroundColor(color)
                    .frame(height: 120)
                HStack (spacing: 16) {
                    Image(systemName: "pawprint.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .padding(.top, 48)
                    Text("Cãoculadora")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.top, 48)
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
            VStack(alignment: .leading, spacing: 32) {
                Text("Qual a idade do seu cão?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(color)
                VStack (alignment: .leading, spacing: 8) {
                    Text("Anos")
                        .font(.headline)
                    TextField("Digite os anos completos aqui", value: $years, format: .number)
                }
                VStack (alignment: .leading, spacing: 8) {
                    Text("Meses")
                        .font(.headline)
                    TextField("Digite os meses aqui", value: $months, format: .number)
                }
                VStack (alignment: .leading, spacing: 8) {
                    Text("Porte")
                        .font(.headline)
                    
                }
            }
                .textFieldStyle(.roundedBorder)
                .foregroundColor(color)
                .keyboardType(.numberPad)
                .padding()
            if let result {
                Text("Seu resultado foi:")
                Text("\(result)!")
            } else {
                Image(.doggo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 198.4, height: 150)
                    .cornerRadius(20)
                    .padding(.vertical, 40)
            }
            Button(action: {
                result = 23
            }, label: {
                Text("Cãocular")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                })
                .padding()
                .frame(width: 345, height: 52)
                .background(color)
                .cornerRadius(12)
            }
        }
    }
#Preview {
    ContentView()
}
