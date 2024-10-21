//
//  View+Distortion.swift
//  shaders
//
//  Created by Eric on 19/10/24.
//

import SwiftUI

extension View {
    func distortionShader() -> some View {
        modifier(DistortionShader())
    }
}

struct DistortionShader: ViewModifier {
    func body(content: Content) -> some View {
        content
            .distortionEffect(
                ShaderLibrary.distortion(),
                maxSampleOffset: .zero
            )
    }
}
