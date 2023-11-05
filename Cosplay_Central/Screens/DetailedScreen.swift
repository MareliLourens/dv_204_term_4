import SwiftUI

struct DetailedScreen: View {
    let character: Characters
    @State private var selectedOptions: [Bool] = [false, false, false, false]
    @State private var progress: Float = 0.0
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationLink(destination: ContentView()) {
                Image(systemName: "arrow.uturn.left")
                    .imageScale(.large)
                    .foregroundColor(.blue)
            }
            
            ZStack() {
                Rectangle()
                    .foregroundColor(.clear)
                    .background(
                        Image(character.image)
                            .resizable()
                            .frame(width: 77, height: 77)
                    )
                    .offset(x: -123, y: 0)
                Text(character.name)
                    .frame(width: 150, height: 24, alignment: .leading)
                    .font(Font.custom("Raleway", size: 24))
                    .lineSpacing(23.04)
                    .foregroundColor(Color(red: 0.05, green: 0.06, blue: 0.09))
                    .offset(x: 0, y: -27)
                Text(character.long_description)
                    .font(Font.custom("Raleway", size: 13))
                    .foregroundColor(Color(red: 0.05, green: 0.06, blue: 0.09))
                    .offset(x: 25, y: 33.50)
                    .frame(width: 200, height: 150, alignment: .leading)
            }
            .frame(width: 353, height: 153)
            
            VStack {
                Text("Character Parts")
                    .font(.title)
                    .padding()
                
                ProgressBar(value: $progress)
                
                List {
                    ForEach(0..<selectedOptions.count, id: \.self) { index in
                        HStack {
                            RadioButton(isSelected: $selectedOptions[index], index: index, progress: $progress, selectedOptions: $selectedOptions)
                            Text(characterInfoLabel(index))
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .padding()
        }
    }
    
    private func characterInfoLabel(_ index: Int) -> String {
        switch index {
        case 0:
            return "\(character.hair)"
        case 1:
            return "\(character.shirt)"
        case 2:
            return "\(character.pants)"
        case 3:
            return "\(character.shoes)"
        default:
            return ""
        }
    }
}

struct RadioButton: View {
    @Binding var isSelected: Bool
    let index: Int
    @Binding var progress: Float
    @Binding var selectedOptions: [Bool]
    
    var body: some View {
        Image(systemName: isSelected ? "largecircle.fill.circle" : "circle")
            .resizable()
            .frame(width: 24, height: 24)
            .onTapGesture {
                isSelected.toggle()
                updateProgress()
            }
    }
    
    private func updateProgress() {
        let selectedCount = selectedOptions.filter { $0 }.count
        progress = Float(selectedCount) / Float(selectedOptions.count)
    }
}

struct ProgressBar: View {
    @Binding var value: Float
    
    var body: some View {
        let maxWidth: CGFloat = 400.0 // Maximum width for the progress bar
        
        return ZStack(alignment: .leading) {
            Rectangle()
                .frame(width: maxWidth, height: 20) // Set the maximum width here
                .foregroundColor(Color(UIColor.systemGray5))
                .cornerRadius(10)
            
            Rectangle()
                .frame(width: min(CGFloat(value) * maxWidth, maxWidth), height: 20)
                .foregroundColor(Color.blue)
                .cornerRadius(10)
                .animation(.linear)
        }
    }
}

struct DetailedScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailedScreen(character: Character_data[0])
    }
}
