//
//  ContentView.swift
//  swiftui-animations
//
//  Created by Azu on 17/07/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0
    @State private var scale: CGFloat = 1
    
    var body: some View {
        Button(action: {
            withAnimation{
                self.rotation = (self.rotation < 360) ? self.rotation + 60 : 0
                self.scale = (self.scale < 2.8) ? self.scale + 0.3 : 1
            }
            
        }, label: {
            Text("Click to Rotate")
                .scaleEffect(scale)
                .rotationEffect(.degrees(rotation))
                //.animation(.linear)
        })
        .foregroundColor(.secondary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
