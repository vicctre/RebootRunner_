//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	if (gl_FragColor.r != 1.0 && gl_FragColor.r != 0.0 && gl_FragColor.r != 197.0/255.0)
	{
		gl_FragColor.r *= 0.5;
		gl_FragColor.g *= 0.5;
		gl_FragColor.b *= 2.0;
	}
}
