//
//  ColorEffect.metal
//  shaders
//
//  Created by Eric on 28/09/24.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 color(float2 position, half4 color) {
    return color;
}
