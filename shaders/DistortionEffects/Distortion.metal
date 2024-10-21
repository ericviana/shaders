//
//  Distortion.metal
//  shaders
//
//  Created by Eric on 19/10/24.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] float2 distortion(float2 position) {
    return float2(position.x + 100, position.y);
}
