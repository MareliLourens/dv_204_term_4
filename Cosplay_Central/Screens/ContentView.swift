//
//  ContentView.swift
//  Cosplay_Central
//
//  Created by lecturer on 2023/11/03.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(Color("Beige"))
                .ignoresSafeArea(.all)
            VStack {
                HStack() {
                    Text("Welcome")
                        .font(
                            Font.custom("Raleway", size: 36).weight(.bold)
                        )
                        .lineSpacing(34.56)
                        .foregroundColor(Color("Dark_Orange"))
                        .offset(x: -93.23, y: 0)
                }
                .frame(width: 350.47, height: 35)
                
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 353, height: 54)
                        .background(Color("Dark_Orange"))
                        .cornerRadius(20)
                        .offset(x: 0, y: 0)
                        .shadow(
                            color: Color(red: 0.05, green: 0.06, blue: 0.09, opacity: 0.15), radius: 5, x: 1, y: 4
                        )
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 155, height: 32)
                        .background(Color("Beige"))
                        .cornerRadius(20)
                        .offset(x: -84, y: 0)
                    Text("All Characters")
                        .font(Font.custom("Raleway", size: 15).weight(.semibold))
                        .lineSpacing(14.40)
                        .foregroundColor(Color("Dark"))
                        .offset(x: -83.50, y: 0)
                    Text("Continue working")
                        .font(Font.custom("Raleway", size: 15))
                        .lineSpacing(14.40)
                        .foregroundColor(Color("Dark"))
                        .offset(x: 85.50, y: 0)
                }
                .frame(width: 353, height: 54)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 69, height: 16)
                        .background(Color("Dark_Orange"))
                        .cornerRadius(20)
                        .offset(x: -78, y: 0)
                    Text("Rarity")
                        .font(Font.custom("Raleway", size: 10).weight(.medium))
                        .lineSpacing(9.60)
                        .foregroundColor(Color("Dark"))
                        .offset(x: -78, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 69, height: 16)
                        .background(Color("Dark_Orange"))
                        .cornerRadius(20)
                        .offset(x: 0, y: 0)
                    Text("Region")
                        .font(Font.custom("Raleway", size: 10).weight(.medium))
                        .lineSpacing(9.60)
                        .foregroundColor(Color("Dark"))
                        .offset(x: 0, y: 0)
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 69, height: 16)
                            .background(Color("Dark_Orange"))
                            .cornerRadius(20)
                            .offset(x: 0, y: 0)
                        Text("Element")
                            .font(Font.custom("Raleway", size: 10).weight(.medium))
                            .lineSpacing(9.60)
                            .foregroundColor(Color("Dark"))
                            .offset(x: 0, y: 0)
                    }
                    .frame(width: 69, height: 16)
                    .offset(x: 78, y: 0)
                }
                .frame(width: 225, height: 16)
                   
                      
                           
                                Home_CharacterView()
                          
                        
                    
                
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
                        .background(Color("Dark_Orange"))
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
            .padding()
        }.fullScreenCover(isPresented: $shouldShowOnboarding, content:{
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })

    }
    
}


struct OnboardingView:View {
    @Binding var shouldShowOnboarding:Bool
    var body: some View{
        TabView{
            PageView(title: "Start your cosplaying journey",
                     imageName:"theatermask.and.paintbrush.fill",
                     showsDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding)
            
            PageView(title: "Work step by step",
                     imageName: "paintpalette.fill",
                     showsDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding)
            
            PageView(title: "Complete it in no time",
                     imageName: "paintbrush.pointed.fill",
            showsDismissButton: true,
                     shouldShowOnboarding: $shouldShowOnboarding)
            
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct PageView: View {
    let title:String
    let imageName:String
    let showsDismissButton:Bool
    @Binding var shouldShowOnboarding: Bool
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("Beige"))
                .ignoresSafeArea(.all)
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                    .padding()
                Text(title)
                    .font(Font.custom("Raleway", size: 20).weight(.medium))
                    .padding()
                
                if showsDismissButton{
                    Button(action: {
                        shouldShowOnboarding.toggle()
                    }, label: {
                        Text("Get started")
                            .frame(width: 200, height: 50)
                            .foregroundColor(Color("Dark_Orange"))
                    })
                }
            }.background(Color("Beige"))
                .frame(width: 300, height: 300)
        }
    }}



//Preview structure
#Preview {
    ContentView()
}
