//
//  SettingsView.swift
//  Cosplay_Central
//
//  Created by lecturer on 2023/11/03.
//

import SwiftUI

struct SettingsScreen: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("Beige"))
                .ignoresSafeArea(.all)
            VStack{
                VStack(alignment: .leading) {
                            NavigationLink(destination: ContentView()) {
                                Image(systemName: "arrow.uturn.left")
                                    .colorInvert()
                                    .font(.title)
                            
                            
                        }
                    Text("Settings")
                        .font(
                            Font.custom("FONTSPRING DEMO - Config Alt", size: 36).weight(.bold)
                        )
                        .lineSpacing(34.56)
                        .foregroundColor(Color(red: 0.95, green: 0.56, blue: 0.16))
                    Text("App name: Cosplay Central")
                        .font(Font.custom("Raleway", size: 21.07).weight(.semibold))
                        .lineSpacing(20.23)
                        .foregroundColor(Color(red: 0.05, green: 0.06, blue: 0.09))
                    Text("App version: 1.0")
                        .font(Font.custom("Raleway", size: 21.07).weight(.semibold))
                        .lineSpacing(20.23)
                        .foregroundColor(Color(red: 0.05, green: 0.06, blue: 0.09))
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 348.26, height: 2.11)
                        .background(Color(red: 0.95, green: 0.56, blue: 0.16))
                    Text("Tired of feeling overwhelmed by cosplay projects? Look no further than Cosplay Central!")
                        .font(Font.custom("Raleway", size: 21.07).weight(.semibold))
                        .lineSpacing(20.23)
                        .foregroundColor(Color(red: 0.05, green: 0.06, blue: 0.09))
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 348.26, height: 2.11)
                        .background(Color(red: 0.95, green: 0.56, blue: 0.16))
                    Link("Github", destination: URL(string: "https://github.com/MareliLourens/dv_204_term_4.git")!)
                        .font(Font.custom("Raleway", size: 21.07).weight(.semibold))
                        .lineSpacing(20.23)
                        .foregroundColor(Color(red: 0.05, green: 0.06, blue: 0.09))
                    
                    
                }
                .frame(width: 353, height: 401.56)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 353, height: 49)
                        .background(Color("Dark_Orange"))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .inset(by: 0.50)
                                .stroke(
                                    Color(red: 1, green: 1, blue: 1).opacity(0.30), lineWidth: 0.50
                                )
                        )
                        .offset(x: 0, y: 0)
                    Toggle(isOn: $isDarkMode) {
                        Text(isDarkMode ? "Switch to light mode" : "Switch to dark mode")
                            .font(Font.custom("Raleway", size: 16.86).weight(.bold))
                            .lineSpacing(16.19)
                            .foregroundColor(.white)
                            .offset(x: 0.15, y: 0.03)
                            .padding(10)
                    }.padding(10)}
                .frame(width: 353, height: 49)
                
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 353, height: 51)
                        .background(Color(red: 0.99, green: 0.96, blue: 0.93))
                        .overlay(
                            Rectangle()
                                .stroke(Color(red: 0.99, green: 0.96, blue: 0.93), lineWidth: 10)
                        )
                        .offset(x: 0, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 353, height: 61)
                        .background(Color(red: 0.95, green: 0.56, blue: 0.16))
                        .cornerRadius(20)
                        .offset(x: 0, y: 0)
                    HStack {
                        NavigationLink(destination: ContentView()) {
                            Image(systemName: "house")
                                .font(.title)
                        }

                        NavigationLink(destination: SettingsScreen()) {
                            Image(systemName: "gearshape")
                                .font(.title)
                        }
                    }
                    
                }
                .frame(width: 353, height: 61)
            }
        }
    }
    }


#Preview {
    SettingsScreen()
}
