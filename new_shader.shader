//shader_type canvas_item;


//uniform float time_sin = 1f;
//uniform float time_cos = 0f;
//uniform float amplitude_x = 8.72;
//uniform float amplitude_y = 25;
/*
shader_type canvas_item;
uniform float VchangeY = 25;

void vertex() {

	float vertPosX = cos(VERTEX.x) * 8.72f ;
	float vertPosY = sin(1f + VERTEX.y + VERTEX.x) * VchangeY;
    
	VERTEX.x += vertPosX;
	VERTEX.y += vertPosY;
}
*/
shader_type canvas_item;

uniform float time_sin = 1.0f;
uniform float time_cos = 1.0f;
uniform float amplitude_x = 1.0f;
uniform float amplitude_y = 20.0f;


void vertex() {
	
	float vertPosX = cos(time_cos + VERTEX.x) * amplitude_x ;
	float vertPosY = sin(time_sin + VERTEX.y + VERTEX.x) * amplitude_y;
    
    
	VERTEX.x += vertPosX;
	VERTEX.y += vertPosY;
}

