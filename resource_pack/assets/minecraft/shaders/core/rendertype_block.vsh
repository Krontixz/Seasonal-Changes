#version 150

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in vec2 UV2;
in vec3 Normal;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform vec3 GameTime;

out vec4 vertexColor;
out vec2 texCoord0;
out vec4 normal;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    texCoord0 = UV0;
    normal = vec4(Normal, 0.0);
    
    float timeCycle = mod(GameTime.x * 1000.0, 1920000.0);
    vec4 seasonModifier = vec4(1.0);
    
    if (timeCycle > 480000.0 && timeCycle <= 960000.0) {
        seasonModifier = vec4(1.1, 0.9, 0.7, 1.0);
    } else if (timeCycle > 960000.0 && timeCycle <= 1440000.0) {
        seasonModifier = vec4(1.2, 0.5, 0.2, 1.0);
    } else if (timeCycle > 1440000.0) {
        seasonModifier = vec4(0.8, 0.8, 0.8, 1.0);
    }
    
    vertexColor = Color * seasonModifier;
}
