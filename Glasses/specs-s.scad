// render times:
// clean cache ~5min
 
use <honeycomb.scad>;

// 136mm * 35mm, 19mm bridge       
irl_d = 2;
lens_scale = 0.93;
bridge = 19;


svg_w = 478;
svg_h = 128;

frame_scale = 2/(svg_w/136+svg_h/35);

x_translate = ((svg_w/2)-(svg_w/2*lens_scale))/2;
y_translate = ((svg_h/2)-(svg_h/2*lens_scale));

frame = "specs-s.svg";
lens = "lens-s.svg"; 

scale([frame_scale,frame_scale,1])
{
   difference()
   {
      translate([-svg_w/2,0,0]) render(frame);
      scale([1,1,1.2]) lenses();
   }

   inserts();
}

module lenses()
{
   lense();

   mirror([1,0,0]) 
      lense();
}

module lense()
{
   translate([x_translate,y_translate,0])
      scale([lens_scale,lens_scale,1]) 
        render(lens);
}

module inserts()
{
   insert();

   mirror([1,0,0]) 
      insert();

   translate([-svg_w/2+x_translate*7,y_translate*4,0]) 
      linear_extrude(height=irl_d) text("C", svg_h*lens_scale, "Courier New:style=Bold");

   translate([x_translate*8,y_translate*1.7,0]) scale([1.3,1,1])
      linear_extrude(height=irl_d) text("♯", svg_h, "Consolas:style=Bold");
}

module insert()
{
   cell_size = 6.6;
   wall_size = 0.6;
   
   translate([x_translate,y_translate,0]) scale([lens_scale,lens_scale,1]) 
   {
      intersection()
      {   
         honeycomb(svg_h/cell_size,(svg_w-bridge)/2/cell_size,cell_size/frame_scale,wall_size/frame_scale,irl_d);
         render(lens);
      }
   }
}

module render(image)
{
   linear_extrude(height=irl_d)
      import(image);
}