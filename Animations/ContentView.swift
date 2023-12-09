//
//  ContentView.swift
//  Animations
//
//  Created by Cat-Tuong Tu on 12/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation {
                animationAmount += 360*10
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount), axis: (x: 1, y: 1, z: 0)
        )
    }
}

#Preview {
    ContentView()
}
