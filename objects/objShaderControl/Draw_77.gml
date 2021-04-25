/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;

/*brightnessAmt = -0.5;
contrastAmt = 0.0;
radialBlurOffsetAmt = 0.00;
radialBrightnessAmt = 1.0;*/

if (os_type == os_macosx) {
	draw_surface(application_surface, 0, 0);
} else {
	shader_set(shd_radial_blur);
	shader_set_uniform_f(radialBlurOffset, radialBlurOffsetAmt);
	shader_set_uniform_f(radialBrightness, (brightnessAmt + 1.0));
	shader_set_uniform_f(mousePos, mousePos_x, mousePos_y);
	shader_set_uniform_f(resolution, resolution_x, resolution_y);

	draw_surface(application_surface, 0, 0);

	shader_reset();
}