//
//  ContentView.swift
//  shaders
//
//  Created by Eric on 24/08/24.
//

import SwiftUI

struct ContentView: View {
    let startDate = Date.now

    var body: some View {
        Text("wave")
            .font(.system(size: 48, weight: .bold))
            .kerning(-1.5)
            .wave()
    }
}

#Preview {
    ContentView()
}
