union() // SharpSCAD generated scene: shelf
{
  difference()
  {
    union()
    {
      translate( v= [ -7, -25, 0 ] )
        linear_extrude( height= 4 )
          hull()
          {
            translate( v= [ 10, 10, 0 ] )
              circle( r= 10, $fn= 32 );
            translate( v= [ 118, 10, 0 ] )
              circle( r= 10, $fn= 32 );
            translate( v= [ 10, 86, 0 ] )
              circle( r= 10, $fn= 32 );
            translate( v= [ 118, 86, 0 ] )
              circle( r= 10, $fn= 32 );
          }
      translate( v= [ -7, 0, -20 ] )
        difference()
        {
          cube( size= [ 128, 28, 20 ] );
          translate( v= [ -1, 4, -1 ] )
            cube( size= [ 130, 20, 22 ] );
        }
    }
    translate( v= [ 0, -0.01, 0 ] )
      translate( v= [ 0, 0, -25 ] )
        linear_extrude( height= 30 )
          polygon( points= [ [0, 0], [7, 0], [10, 62], [16, 72], [-16, 72], [-10, 62], [-7, 0] ] );
  }
}
