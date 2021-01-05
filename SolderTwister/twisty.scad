union() // SharpSCAD generated scene: twisty
{
  cylinder( r= 5, $fn= 64, h= 3 );
  cylinder( r1= 4.2, r2= 4.5, $fn= 128, h= 70 );
  translate( v= [ 0, 0, 70 ] )
  {
    sphere( r= 4.5, $fn= 128 );
  }
  translate( v= [ 0, 0, 75.5 ] )
  {
    rotate( a= [ 90, 0, 0 ] )
    {
      { // module: torus
        rotate_extrude( $fn= 100, angle= 360, convexity= 1 )
        {
          translate( v= [ 2.75, 0, 0 ] )
          {
            circle( r= 1.75, $fn= 64 );
          }
        }
      }
    }
  }
}
