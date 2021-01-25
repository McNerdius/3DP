union() // SharpSCAD generated scene: square_jig
{
  { // module: hole_jig
    difference()
    {
      translate( v= [ 4, 4, 0 ] )
      {
        hull()
        {
          cylinder( r= 4, $fn= 24, h= 2 );
          translate( v= [ 195.2, 0, 0 ] )
          {
            cylinder( r= 4, $fn= 24, h= 2 );
          }
          translate( v= [ 0, 42.8, 0 ] )
          {
            cylinder( r= 4, $fn= 24, h= 2 );
          }
          translate( v= [ 195.2, 42.8, 0 ] )
          {
            cylinder( r= 4, $fn= 24, h= 2 );
          }
        }
      }
      translate( v= [ 0, 0, 1 ] )
      {
        { // module: holegrid
          union()
          {
            translate( v= [ 0, 0, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 0, 25.4, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 0, 50.8, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 25.4, 0, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 25.4, 25.4, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 25.4, 50.8, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 50.8, 0, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 50.8, 25.4, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 50.8, 50.8, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 76.2, 0, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 76.2, 25.4, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 76.2, 50.8, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 101.6, 0, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 101.6, 25.4, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 101.6, 50.8, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 127, 0, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 127, 25.4, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 127, 50.8, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 152.4, 0, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 152.4, 25.4, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 152.4, 50.8, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 177.8, 0, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 177.8, 25.4, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 177.8, 50.8, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 203.2, 0, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 203.2, 25.4, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
            translate( v= [ 203.2, 50.8, 0 ] )
            {
              cylinder( r= 3.5, center= true, $fn= 32, h= 4 );
            }
          }
        }
      }
    }
  }
}
