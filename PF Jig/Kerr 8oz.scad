union() // SharpSCAD generated scene: Kerr 8oz
{
  rotate( a= [ 0, 0, 15 ] )
  {
    { // module: pf_jig
      difference()
      {
        hull()
        {
          translate( v= [ 30.1, 0, 0 ] )
          {
            cylinder( r= 7.525, center= true, $fn= 32, h= 3 );
          }
          rotate( a= [ 0, 0, 120 ] )
          {
            translate( v= [ 30.1, 0, 0 ] )
            {
              cylinder( r= 7.525, center= true, $fn= 32, h= 3 );
            }
          }
          rotate( a= [ 0, 0, -120 ] )
          {
            translate( v= [ 30.1, 0, 0 ] )
            {
              cylinder( r= 7.525, center= true, $fn= 32, h= 3 );
            }
          }
        }
        cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
        translate( v= [ 16.65, 0, 0 ] )
        {
          cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
        }
        rotate( a= [ 0, 0, 120 ] )
        {
          translate( v= [ 16.65, 0, 0 ] )
          {
            cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
          }
        }
        rotate( a= [ 0, 0, -120 ] )
        {
          translate( v= [ 16.65, 0, 0 ] )
          {
            cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
          }
        }
        translate( v= [ 33.3, 0, 0 ] )
        {
          cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
        }
        rotate( a= [ 0, 0, 120 ] )
        {
          translate( v= [ 33.3, 0, 0 ] )
          {
            cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
          }
        }
        rotate( a= [ 0, 0, -120 ] )
        {
          translate( v= [ 33.3, 0, 0 ] )
          {
            cylinder( r= 1.5, center= true, $fn= 32, h= 4 );
          }
        }
      }
    }
  }
}
