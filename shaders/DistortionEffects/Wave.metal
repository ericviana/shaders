//
//  Wave.metal
//  shaders
//
//  Created by Eric on 24/08/24.
//

#include <metal_stdlib>
using namespace metal;

[[stitchable]] float2 wave(float2 position, float length, float amplitude, float time) {
    return position-float2(0, sin(time+position.x/length+time)*amplitude);
}
