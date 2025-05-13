//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    //Shaders 
gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );

//shaders 
//FragColor.r for example represents Red in the RGB 
//One line = 1 color change 
//255 is max aka white 
//first number (85.0/255.0) is the base color you want to change 
//the vec3() tells the code to change 

    if(gl_FragColor.r == 85.0/255.0 && gl_FragColor.g == 85.0/255.0 && gl_FragColor.b == 85.0/255.0)
		{
			gl_FragColor.rgb = vec3(3.0, 59.0, 178.0)/255.0;
		}
    if(gl_FragColor.r == 84.0/255.0 && gl_FragColor.g == 85.0/255.0 && gl_FragColor.b == 85.0/255.0) 
		{
			gl_FragColor.rgb = vec3(125.0, 55.0, 178.0)/255.0;
		}

    if(gl_FragColor.r == 54.0/255.0 && gl_FragColor.g == 54.0/255.0 && gl_FragColor.b == 54.0/255.0) 
		{
			gl_FragColor.rgb = vec3(0.0, 1.0, 51.0)/255.0;
		}

    if(gl_FragColor.r == 125.0/255.0 && gl_FragColor.g == 138.0/255.0 && gl_FragColor.b == 125.0/255.0) 
		{
			gl_FragColor.rgb = vec3(1.0, 191.0, 167.0)/255.0;
		}

    if(gl_FragColor.r == 76.0/255.0 && gl_FragColor.g == 76.0/255.0 && gl_FragColor.b == 91.0/255.0) 
		{
			gl_FragColor.rgb = vec3(35.0, 1.0, 102.0)/255.0;
		}

}
