#version 330 core
out vec4 FragColor;
in vec2 TexCoords;
uniform sampler2D hdrBuffer;
uniform float exposure;
void main() {
    vec3 hdrColor = texture(hdrBuffer, TexCoords).rgb;
    vec3 mapped = (hdrColor * exposure) / (hdrColor * exposure + vec3(1.0));
    FragColor = vec4(mapped, 1.0);
}