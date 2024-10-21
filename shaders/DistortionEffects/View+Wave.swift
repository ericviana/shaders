//
//  View+Wave.swift
//  shaders
//
//  Created by Eric on 24/08/24.
//

import SwiftUI

private struct WaveModifier: ViewModifier {
    var length: CGFloat
    var amplitude: CGFloat
    var speed: CGFloat

    let startDate = Date.now

    func body(content: Content) -> some View {
        if speed == 0 {
            effect(content: content, time: 0)
        } else {
            TimelineView(.animation) { context in
                effect(content: content, time: context.date.timeIntervalSince(startDate) * speed)
            }
        }
    }

    func effect(content: Content, time: CGFloat) -> some View {
        content
            .padding(.vertical, amplitude)
            .drawingGroup()
            .distortionEffect(ShaderLibrary.wave(.float(length), .float(amplitude), .float(time)), maxSampleOffset: .init(width: 0, height: amplitude))
    }
}

extension View {
    func wave(length: CGFloat = 15, amplitude: CGFloat = 5, speed: CGFloat = 2) -> some View {
        modifier(WaveModifier(length: length, amplitude: amplitude, speed: speed))
    }
}
