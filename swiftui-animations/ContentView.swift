//
//  ContentView.swift
//  swiftui-animations
//
//  Created by Azu on 17/07/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isButtonVisible = true
    
    var body: some View {
        VStack {
            Toggle(isOn:$isButtonVisible.animation(.linear(duration: 1))) {
                    Text("Show/Hide Button")
                }
            .padding()
        
            if isButtonVisible {
                Button(action: {}) {
                    Text("Example Button")
                }
                .font(.largeTitle)
                .transition(.asymmetric(insertion: .move(edge: .leading), removal: .fadeAndMove))
            }
        }
    }
}


extension AnyTransition {
    static var fadeAndMove: AnyTransition {
        AnyTransition.opacity.combined(with: .move(edge: .trailing))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
