/// @description Get uniforms and such
// You can write your code in this editor

application_surface_draw_enable(false);

//brightness = shader_get_uniform(shd_bright_contrast, "brightness_amount");
brightnessAmt = 0.0;
//contrast = shader_get_uniform(shd_bright_contrast, "contrast_amount");
//contrastAmt = 0.0;



radialBlurOffset = shader_get_uniform(shd_radial_blur, "radial_blur_offset");
radialBlurOffsetAmt = 0.0;
radialBrightness = shader_get_uniform(shd_radial_blur, "radial_brightness");
radialBrightnessAmt = 1.0;

mousePos = shader_get_uniform(shd_radial_blur,"mouse_pos");
mousePos_x = 400;
mousePos_y = 300;

resolution = shader_get_uniform(shd_radial_blur,"resolution");
resolution_x = 800
resolution_y = 600


//Control fade out
fadingOut = false;
fadeAmount = 0.0;
fadeBegin = 0.0;
fadeEnd = 1.0;
fadeTarget = 0.0;
fadeSpeedBase = 0.005;
fadeSpeed = fadeSpeedBase;
fadeDir = 1;
nextLevel = false;

brightnessBegin = 0;
brightnessEnd = -1.0;
blurOffsetBegin = 0.0;
blurOffsetEnd = 0.25;


// Set fade in (turn off for level 1)
fadingOut = true;
brightnessAmt = -1.0;
fadeTarget = 0.0;
fadeAmount = 1.0;
fadeDir = -1;
fadeSpeed = fadeSpeedBase * 3;
nextLevel = false;
alarm[0] = 1;

