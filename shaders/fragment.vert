uniform sampler2D globeTexture;
varying vec2 vertexUV; // vec2(0, 0.24)
varying vec3 vertexNormal;

void main() {
    float intensity = 1.05 - dot(vertexNormal, vec3(0.0, 0.0, 1.0));
    vec3 atmosphere = vec3(0.3, 0.6, 2.5) * pow(intensity, 2.0); // change color

    gl_FragColor = vec4(atmosphere + texture2D(globeTexture, vertexUV).xyz, 1.0);
}