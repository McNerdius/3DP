union() // SharpSCAD generated scene: handle
{
  difference()
  {
    rotate( a= [ 0, 0, 30 ] )
    {
      translate( v= [ 0, 0, 1 ] )
      {
        cylinder( r1= 12, r2= 8, $fn= 6, h= 50 );
      }
    }
    translate( v= [ 2.5, 0, 0 ] )
    {
      cylinder( r= 1.7, $fn= 16, h= 120 );
    }
    translate( v= [ -2.5, 0, 0 ] )
    {
      cylinder( r= 1.7, $fn= 16, h= 120 );
    }
    translate( v= [ 0, 5, 0 ] )
    {
      cylinder( r= 1.7, $fn= 16, h= 50 );
    }
    translate( v= [ 0, -5, 0 ] )
    {
      cylinder( r= 1.7, $fn= 16, h= 50 );
    }
  }
}
