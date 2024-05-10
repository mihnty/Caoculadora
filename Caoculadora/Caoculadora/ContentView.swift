import SwiftUI

struct ContentView: View {
    @State var years: Int?
    @State var months: Int?
    @State var result: Int?
    @State var porteSelecionado: Porte = .pequeno
    
    private var color: Color = .init(red: 0x4F/0xFF, green: 0x46/0xFF, blue: 0xE5/0xFF)
    private var color1: Color = .init(red: 0xC7/0xFF, green: 0xD2/0xFF, blue: 0xFE/0xFF)

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
                        .font(.header4)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.top, 48)
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
            VStack(alignment: .leading, spacing: 32) {
                Text("Qual a idade do seu cão?")
                    .font(.header5)
                    .foregroundColor(color)
                VStack (alignment: .leading, spacing: 8) {
                    Text("Anos")
                        .font(.body1)
                    ZStack {
                        TextField("Digite os anos completos aqui", value: $years, format: .number)
                            .foregroundColor(color)
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(color1, lineWidth: 1)
                    }
                }
                VStack (alignment: .leading, spacing: 8) {
                    Text("Meses")
                        .font(.body1)
                    ZStack {
                        TextField("Digite os meses aqui", value: $months, format: .number)
                            .foregroundColor(color)
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(color1, lineWidth: 1)
                    }

                }
                VStack (alignment: .leading, spacing: 8) {
                    Text("Porte")
                        .font(.body1)
                    Picker("Porte", selection: $porteSelecionado) {
                        ForEach(Porte.allCases, id: \.self) { porte in
                            Text(porte.rawValue)
                                .tag(porte)
                        }
                    }
                    .pickerStyle(.segmented)
                    .colorMultiply(color1)
                }
            }
            .textFieldStyle(.roundedBorder)
            .foregroundColor(color)
            .keyboardType(.numberPad)
            .padding()
            if let result {
                Text("Seu cachorro tem, em idade humana...")
                    .font(.body1)
                    .foregroundColor(color)
                    .padding()
                Text("\(result) anos!")
                    .font(.display)
                    .foregroundColor(color)
                    .padding()
            } else {
                Image(.doggo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 198.4, height: 150)
                    .cornerRadius(20)
                    .padding()
            }
            Button(action: processYears, label: {
                Text("Cãocular")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            })
            .frame(width: 345, height: 52)
            .background(color)
            .cornerRadius(12)
        }
    }
    
    func processYears() {
        guard
            let years,
            let months
        else {
            print("Preencha o campo de entrada!")
            return
        }
        guard years > 0 || months > 0 else {
            print("Algum campo tem que ter valor maior que zero!")
            return
        }
        result = porteSelecionado.conversaoDeIdade(anos: years, meses: months)
    }
}
#Preview {
    ContentView()
}
