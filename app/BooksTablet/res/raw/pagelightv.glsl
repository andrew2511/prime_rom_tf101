varying float varColor;
varying vec2 varTex0;

void main() {
   vec3 pos = vec3(-1.0 + 2.0 * UNI_u_max * ATTRIB_position.x,
                   UNI_v_max * ATTRIB_position.y,
                   ATTRIB_position.z);
   vec3 normal = ATTRIB_normal;
   if (UNI_backFacing > 0.5) {
       normal = -normal;
       pos += 0.001 *normal;
       varTex0 = vec2(1.0-ATTRIB_texture0.x, ATTRIB_texture0.y);
   } else {
       varTex0 = ATTRIB_texture0;
   }
   gl_Position = UNI_modelViewProj * vec4(pos, 1.0);

   float lightVal = dot(normal, vec3(0.25, 0.0, 1.0))*0.4 + 0.8;
   lightVal = clamp(lightVal, 0.0, 1.0) ;
   varColor = lightVal;
}
