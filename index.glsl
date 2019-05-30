vec4 tiling (vec2 p, vec2 n) {
	return vec4(fract(p * n), floor(p * n));
}

#pragma glslify: export(tiling)
