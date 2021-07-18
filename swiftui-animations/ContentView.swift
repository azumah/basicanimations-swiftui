//
//  ContentView.swift
//  swiftui-animations
//
//  Created by Azu on 17/07/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isSpinning = false
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 2)
                .foregroundColor(.blue)
                .frame(width: 300, height: 300)
            
            Image(systemName: "forward.fill")
                .font(.largeTitle)
                .offset(y: -150)
                .rotationEffect(.degrees(isSpinning ? 360 : 0))
        }
        .onAppear{
            withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)){
                isSpinning.toggle()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
