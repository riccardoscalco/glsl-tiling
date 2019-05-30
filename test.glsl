precision mediump float;

#pragma glslify: tiling = require(./)

bool test_1() {
	vec4 t = tiling(vec2(0.4, 0.4), vec2(2., 2.));
	return t.zw == vec2(0., 0.);
}

bool test_2() {
	vec4 t = tiling(vec2(0.6, 0.6), vec2(2., 2.));
	return t.zw == vec2(1., 1.);
}

bool test_3() {
	vec4 t = tiling(vec2(0.4, 0.6), vec2(2., 2.));
	return t.zw == vec2(0., 1.);
}

bool test_4() {
	vec4 t = tiling(vec2(0.6, 0.4), vec2(2., 2.));
	return t.zw == vec2(1., 0.);
}

bool test_5() {
	vec4 t = tiling(vec2(0.9, 0.4), vec2(3., 2.));
	return t.zw == vec2(2., 0.);
}

bool test_6() {
	vec4 t = tiling(vec2(0.6, 0.6), vec2(3., 2.));
	return t.zw == vec2(1., 1.);
}

bool test_7() {
	vec4 t = tiling(vec2(0.5, 0.5), vec2(10., 6.));
	return t.zw == vec2(5., 3.);
}

bool test_8() {
	vec4 t = tiling(vec2(0.5, 0.5), vec2(10., 6.));
	return t.xy == vec2(0., 0.);
}

bool test_9() {
	vec4 t = tiling(vec2(0.25, 0.25), vec2(2., 2.));
	return t.xy == vec2(0.5, 0.5);
}
