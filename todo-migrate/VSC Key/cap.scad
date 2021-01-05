STEM_CLEARANCE = 0.12;

// needed but defined/used in vsc_cap:
// HEIGHT = 5;
// WIDTH = 17;
// TOP_THICKNESS = 0.8;
// CORNER_RADIUS = 3; 

module key(height,top_thickness)
{
    translate([0,0,-height])
    {
        shell(height,top_thickness); 
        stem(height); 
    }
}

module stem(height)
{
    difference()
    {
        rounded_cube(4.8, 6, height, 1);
        cross(h=10);
    }
}

module shell(height,top_thickness)
{
    difference()
    {
        rounded_cube(WIDTH, WIDTH, height, CORNER_RADIUS);
        translate([0,0,-top_thickness]) rounded_cube(WIDTH-2, WIDTH-2, height * 1.01, CORNER_RADIUS);
    }
}

module cross(h) 
{
    cube([4+2*STEM_CLEARANCE,1.3+2*STEM_CLEARANCE,h], center=true);
    cube([1.1+2*STEM_CLEARANCE,4+2*STEM_CLEARANCE,h], center=true);
}

module rounded_cube(x, y, z, r) 
{
    translate([(-x/2)+r,(-y/2)+r,0])
    minkowski() 
    {
        cube([x-2*r,y-2*r,z-1]);
        cylinder(r=r, h=1, $fn=64);
    }
}