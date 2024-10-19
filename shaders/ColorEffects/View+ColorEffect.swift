//
//  View+ColorEffect.swift
//  shaders
//
//  Created by Eric on 28/09/24.
//

import SwiftUI

extension View {
    func colorShader() -> some View {
        modifier(ColorShader())
    }
}

struct ColorShader: ViewModifier {
    func body(content: Content) -> some View {
        content
            .colorEffect(ShaderLibrary.color())
    }
}

extension View {
    func sizeAwareColorShader() -> some View {
        modifier(SizeAwareColorShader())
    }
}

struct SizeAwareColorShader: ViewModifier {
    func body(content: Content) -> some View {
        content.visualEffect { content, proxy in
            content
                .colorEffect(ShaderLibrary.sizeAwareColor(
                    .float2(proxy.size)
                ))
        }
    }
}

extension View {
    func timeVaryingShader() -> some View {
        modifier(TimeVaryingShader())
    }
}

struct TimeVaryingShader: ViewModifier {
    private let startDate = Date()

    func body(content: Content) -> some View {
        TimelineView(.animation) { _ in
            content.visualEffect { content, proxy in
                content
                    .colorEffect(
                        ShaderLibrary.timeVaryingColor(
                            .float2(proxy.size),
                            .float2(startDate.timeIntervalSinceNow)
                        )
                    )
            }
        }
    }
}
