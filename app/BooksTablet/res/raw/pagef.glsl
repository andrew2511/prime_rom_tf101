varying float varColor;
varying vec2 varTex0;

void main() {
   lowp vec4 col = texture2D(UNI_Tex0, varTex0);
   col *= UNI_fadeinAlpha;
   col.a = UNI_fadeinAlpha;
   gl_FragColor = col;
}

