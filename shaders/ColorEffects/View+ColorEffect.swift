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
