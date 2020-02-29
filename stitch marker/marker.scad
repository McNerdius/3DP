// see variables.png

Length = 16;
Width  = 10;
Girth  = 1.8;
Bump   = 3.6;

Height = 1.6; // <-- z dimension: not shown in pic

StitchMarker(Length, Width, Height, Girth, Bump);

module StitchMarker(length, width, height, girth, bump)
{
    radius = width/2;

    difference()
    {
        union()
        {
            translate([0, bump/2, 0]) 
                cube(size=[width, length-radius-bump/2, height], center=false);
            
            translate([width/2,length-radius,0])
                cylinder(r=radius, h=height, center=false, $fn=64);
        }

        union()
        {
            translate([girth, 0, 0]) 
                cube(size=[width-2*girth, length-radius, height], center=false);

            translate([width/2,length-radius,0])
                cylinder(r=radius-girth, h=height, center=false, $fn=64);
        }
    }

    // bumps
    translate([bump/2, bump/2, 0])
        cylinder(r=bump/2, h=height, center=false, $fn=64);

    translate([width-bump/2, bump/2, 0])
        cylinder(r=bump/2, h=height, center=false, $fn=64);
}