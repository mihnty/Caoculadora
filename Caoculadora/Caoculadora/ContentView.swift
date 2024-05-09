import SwiftUI

struct ContentView: View {
    @State var years: Int? = nil
    @State var months: Int? = nil
    @State var result: Int?
    let portes = ["Pequeno", "Médio", "Grande"]
    @State var porte: String = "Pequeno"
    
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
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.top, 48)
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
            VStack(alignment: .leading, spacing: 32) {
                Text("Qual a idade do seu cão?")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(color)
                VStack (alignment: .leading, spacing: 8) {
                    Text("Anos")
                        .font(.system(.headline, design: .rounded))
                    ZStack {
                        TextField("Digite os anos completos aqui", value: $years, format: .number)
                            .foregroundColor(color)
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(color1, lineWidth: 1)
                    }
                }
                VStack (alignment: .leading, spacing: 8) {
                    Text("Meses")
                        .font(.system(.headline, design: .rounded))
                    ZStack {
                        TextField("Digite os meses aqui", value: $months, format: .number)
                            .foregroundColor(color)
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(color1, lineWidth: 1)
                    }

                }
                VStack (alignment: .leading, spacing: 8) {
                    Text("Porte")
                        .font(.system(.headline, design: .rounded))
                    Picker("Porte", selection: $porte) {
                        ForEach(portes, id: \.self) { porte in
                            Text(porte)
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
                    .font(.system(.headline, design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(color)
                    .padding()
                Text("\(result) anos!")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(color)
                    .padding(.vertical, 32)
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
        result = (years + months/12) * 7
    }
}
#Preview {
    ContentView()
}
