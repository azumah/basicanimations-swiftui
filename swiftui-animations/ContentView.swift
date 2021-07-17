//
//  ContentView.swift
//  swiftui-animations
//
//  Created by Azu on 17/07/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0
    
    var body: some View {
        Button(action: {
            self.rotation = (self.rotation < 360) ? self.rotation + 60 : 0
        }, label: {
            Text("Click to Rotate")
                .rotationEffect(.degrees(rotation))
                .animation(.linear)
        })
        .foregroundColor(.secondary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
