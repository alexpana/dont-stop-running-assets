$input a_position, i_data0, i_data1, i_data2
$output v_color0

/*
 * Copyright 2011-2015 Branimir Karadzic. All rights reserved.
 * License: http://www.opensource.org/licenses/BSD-2-Clause
 */

#include "common.sh"

void main()
{
	vec4 pos = vec4(a_position, 1.0);
	vec4 rPos = pos;
	float c = cos(i_data2.y);
	float s = sin(i_data2.y);
	rPos.x = pos.x * c - pos.y * s;
	rPos.y = pos.y * c + pos.x * s;
	
	vec4 sPos = (rPos * vec4(i_data2.xxx, 1)) + i_data0;

	gl_Position = mul(u_modelViewProj, sPos);

	v_color0 = i_data1;
}
