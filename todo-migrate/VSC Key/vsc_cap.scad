HEIGHT = 6;
WIDTH = 18;

CORNER_RADIUS = 4.2;

TOP_THICKNESS = 1.2;
TOP_HEIGHT = 1.0001;

include <cap.scad>

vsc_key();
// logo_grid();

module vsc_key(height = HEIGHT)
{
    difference()
    {   
        rounded_cube(WIDTH, WIDTH, TOP_HEIGHT, CORNER_RADIUS);

        translate([0,0,-2]) 
            scale([0.45,0.45,10]) 
                logo("assets/vsc/filled.svg");
    }

    key(height, TOP_THICKNESS);
}

module logo(file)
{
    // arbitrary scale, just ballparkin it
    scale([0.135,0.135,1])
    rotate([0,0,90])
    linear_extrude(height=1, convexity=0)
        import(file, center=true);
}

module logo_grid()
{
    base_scale = 1.1;
    scale_increment = 0.07;

    base_height = 1.2;
    height_increment = 0.4;

    for (_scale=[0:3])
    for (height=[0:3])
    {
        _s = base_scale + _scale * scale_increment;
        _h = base_height + height * height_increment;

        translate([_scale*20,height*20,0])
        scale([_s,_s,_h])
        logo("assets/vsc/logo.svg");
    }
}