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
        TimelineView(.animation) { context in
            Text("shaders")
                .font(.system(size: 48, weight: .bold))
                .kerning(-1.5)
                .padding(.vertical, 50)
                .drawingGroup()
                .distortionEffect(ShaderLibrary.wave(.float(context.date
                        .timeIntervalSince(startDate)
                )), maxSampleOffset: .init(width: 0, height: 50))
        }
    }
}

#Preview {
    ContentView()
}
