//
//  ContentView.swift
//  shaders
//
//  Created by Eric on 24/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Color.white
            .edgesIgnoringSafeArea(.all)
            .sizeAwareColorShader()
    }
}

#Preview {
    ContentView()
}
