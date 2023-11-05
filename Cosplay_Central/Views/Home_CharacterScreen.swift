//
//  Home_CharacterView.swift
//  Cosplay_Central
//
//  Created by lecturer on 2023/11/04.
//

import SwiftUI

struct Home_CharacterView: View {
    
    @State var searchText = ""
    @State private var selectedCharacter: Characters?
    
    var searchResult: [Characters] {
        if(searchText.isEmpty){
            return Character_data
        }else {
            return Character_data.filter{$0.name.contains(searchText)}
        }
    }
    var body: some View {
        
        //VIEW
        ScrollView{
            NavigationView{
                List{
                    ForEach(searchResult){ character in
                        NavigationLink(destination: DetailedScreen(character: character)) {
                            ZStack() {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 353, height: 103)
                                    .background(Color("Light_Orange"))
                                    .cornerRadius(20)
                                    .shadow(
                                        color: Color(red: 0.05, green: 0.06, blue: 0.09, opacity: 0.15), radius: 5, x: 1, y: 4
                                    )
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
                                Text(character.description)
                                    .font(Font.custom("Raleway", size: 13))
                                    .foregroundColor(Color(red: 0.05, green: 0.06, blue: 0.09))
                                    .offset(x: 25, y: 3.50)
                                    .frame(width: 200, height: 50, alignment: .leading)
                                ZStack() {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 69, height: 16)
                                        .background(Color(red: 0.95, green: 0.56, blue: 0.16))
                                        .cornerRadius(20)
                                        .offset(x: 0, y: 0)
                                    Text(character.creator)
                                        .font(Font.custom("Raleway", size: 10).weight(.medium))
                                        .lineSpacing(9.60)
                                        .foregroundColor(Color(red: 0.05, green: 0.06, blue: 0.09))
                                        .offset(x: 0, y: 0)
                                }
                                .frame(width: 69, height: 16)
                                .offset(x: -38, y: 30.50)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .background(
                                        Image(character.rarity_img)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 72, height: 19, alignment: .trailing)
                                    )
                                    .offset(x: 125.50, y: -29)
                                
                                
                                
                                
                            }
                            .frame(width: 353, height: 103)
                            
                            .onTapGesture {
                                selectedCharacter = character
                                UserDefaults.standard.set(character.name, forKey: "selectedCharacter")
                            }
                        }
                    }
                    
                }.searchable(text: $searchText)
                
                    .onAppear {
                        if let selectedCharacterName = UserDefaults.standard.string(forKey: "selectedCharacter") {
                            selectedCharacter = Character_data.first { $0.name == selectedCharacterName }
                        }
                    }
            }
        }
    }
}
    struct Home_CharactersView: PreviewProvider{
        static var previews: some View{
            Home_CharacterView()
        }}

