//
//  ContentView.swift
//  swiftui-animations
//
//  Created by Azu on 17/07/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var visibility = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $visibility.animation(.easeOut)) {
                Text("Toggle Text Views")
            }
            .padding()
            
            if visibility {
                Text("Show Me on Visible")
                    .font(.largeTitle)
            }
            if !visibility {
                Text("Show Me on Invisible")
                    .font(.largeTitle)
            }
            
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
