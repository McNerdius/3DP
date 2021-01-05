union() // SharpSCAD generated scene: test
{
  { // module: barbconnector
    difference()
    {
      union()
      {
        translate( v= [ 0, 0, -20 ] )
          cylinder( r1= 7.38, r2= 8.2, h= 20 );
        translate( v= [ 0, 0, 10 ] )
          difference()
          {
            cylinder( r= 18, center= true, $fn= 3, h= 20 );
            translate( v= [ 0, 0, 2 ] )
              cylinder( r= 16, center= true, $fn= 3, h= 20 );
          }
      }
      translate( v= [ 0, 0, 1 ] )
        cylinder( r= 5, center= true, $fn= 64, h= 44 );
    }
  }
}
