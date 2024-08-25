//
//  Wave.metal
//  shaders
//
//  Created by Eric on 24/08/24.
//

#include <metal_stdlib>
using namespace metal;

[[stitchable]] float2 wave(float2 position, float time) {
    return position-float2(0, sin(position.x*0.05+time)*5);
}
