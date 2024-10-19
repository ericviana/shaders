//
//  ColorEffect.metal
//  shaders
//
//  Created by Eric on 28/09/24.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 color(float2 position, half4 color) {
    return half4(position.x/255.0, position.y/255.0, 0.0, 1.0);
}

[[ stitchable ]] half4 sizeAwareColor(float2 position, half4 color, float2 size) {
    return half4(position.x/size.x, position.y/size.y, position.x/size.y, 1.0);
}

[[ stitchable ]] half4 timeVaryingColor(float2 position, half4 color, float2 size, float time) {
    return ???;
}
