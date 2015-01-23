$input a_position, i_data0, i_data1, i_data2
$output v_color0

/*
 * Copyright 2011-2015 Branimir Karadzic. All rights reserved.
 * License: http://www.opensource.org/licenses/BSD-2-Clause
 */

#include "common.sh"

void main()
{
	vec4 scaledPosition = (vec4(a_position, 1.0) * vec4(i_data2.xxx, 1)) + i_data0;
	gl_Position = mul(u_modelViewProj, scaledPosition);
	v_color0 = i_data1;
}
