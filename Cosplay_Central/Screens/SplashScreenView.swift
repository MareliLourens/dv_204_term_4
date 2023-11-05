//
//  SplashScreenView.swift
//  Cosplay_Central
//
//  Created by lecturer on 2023/11/03.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive{
            ContentView()
        }else{
            VStack{
                VStack{
                    Image("Splash_Image")
                        .font(.system(size:80))
                    Text("Cosplay Central")
                        .font(Font.custom("Raleway", size: 26))
                        .foregroundColor(Color("Dark").opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
        
    }
}

#Preview {
    SplashScreenView()
}
