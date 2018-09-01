
$fn = 14; // lines the cutout hole up nicley :)

color("orange") difference()
{
   handle();
   feeler_cutout(z=30);
   feeler_hole(r=2.2,z=40);
}

module handle()
{  
   // hi res, slow rendering: https://i.imgur.com/YclYnCb.png
   // lo res, for drafts: https://i.imgur.com/pbrzoQe.png
   file = "handle.png"; 
   
   px_w = 114; // 38 for lo res
   px_h = 698; // 230 for lo res
   
   // probably a way to simplify/combine
   // some transformations here...
   // will need number crunching for lo res scaling
   scale([.11,.05,.10])
      rotate_extrude()
         translate([px_w/2,px_h/2,0])
            projection(cut=true)
              translate([0,0,100])
                  rotate([0,180,0])
                     surface(file, center=true);
}

module feeler_cutout(z)
{
   feeler_w = 13.5; 
   feeler_d = 0.36;
   translate([-(feeler_w/2),0,z])
      rotate([90,0,0])
         cube([feeler_w,50,feeler_d]);
}

module feeler_hole(r, z)
{
   translate([0,0,z])
      rotate([90,0,0]) 
         cylinder(20,r,r, center=true);
}

// various shapes and sizes...
//peg(1.9,8);
//translate([5,0,0])  peg(1.8,9);
//translate([10,0,0]) peg(1.8,8);
//translate([15,0,0]) peg(1.75,9);
//translate([20,0,0]) peg(1.75,8);
//translate([25,0,0]) peg(1.9,9);
//
//module peg(r,h)
//{
//   translate([0,0,h]) rotate([180,0,0])
//   {
//      cylinder(h,r,r, $fn=32);
//      translate([0,0,h]) cylinder(.75,r,r+0.5,$fn=32);
//   }
//}