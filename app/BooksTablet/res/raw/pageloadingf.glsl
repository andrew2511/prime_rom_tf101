varying float varColor;
varying vec2 varTex0;

void main() {
   lowp vec4 col = texture2D(UNI_Tex0, varTex0);
   lowp vec4 loading = texture2D(UNI_Tex1, varTex0);
   lowp vec3 backgroundColor = vec3(UNI_backgroundColor);

   loading.rgb = mix(backgroundColor, loading.rgb, UNI_loadingPresence);
   col.rgb = mix(loading.rgb, col.rgb, UNI_contentOpacity);
   col *= UNI_fadeinAlpha;
   col.a = UNI_fadeinAlpha;

   gl_FragColor = col;
}

