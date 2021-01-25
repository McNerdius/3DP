union() // SharpSCAD generated scene: Ball 4oz
{
  rotate( a= [ 0, 0, 15 ] )
  {
    { // module: pf_jig
      difference()
      {
        hull()
        {
          translate( v= [ 22.66, 0, 0 ] )
          {
            cylinder( r= 5.665, center= true, $fn= 32, h= 3 );
          }
          rotate( a= [ 0, 0, 120 ] )
          {
            translate( v= [ 22.66, 0, 0 ] )
            {
              cylinder( r= 5.665, center= true, $fn= 32, h= 3 );
            }
          }
          rotate( a= [ 0, 0, -120 ] )
          {
            translate( v= [ 22.66, 0, 0 ] )
            {
              cylinder( r= 5.665, center= true, $fn= 32, h= 3 );
            }
          }
        }
        cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
        translate( v= [ 12.25, 0, 0 ] )
        {
          cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
        }
        rotate( a= [ 0, 0, 120 ] )
        {
          translate( v= [ 12.25, 0, 0 ] )
          {
            cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
          }
        }
        rotate( a= [ 0, 0, -120 ] )
        {
          translate( v= [ 12.25, 0, 0 ] )
          {
            cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
          }
        }
        translate( v= [ 24.5, 0, 0 ] )
        {
          cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
        }
        rotate( a= [ 0, 0, 120 ] )
        {
          translate( v= [ 24.5, 0, 0 ] )
          {
            cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
          }
        }
        rotate( a= [ 0, 0, -120 ] )
        {
          translate( v= [ 24.5, 0, 0 ] )
          {
            cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
          }
        }
      }
    }
  }
}
