union() // SharpSCAD generated scene: battery_holder
{
  { // module: single18650
    translate( v= [ 0, 0, 26 ] )
    {
      rotate( a= [ 0, 90, 0 ] )
      {
        difference()
        {
          translate( v= [ 5, 5, 0 ] )
          {
            union()
            {
              hull()
              {
                cylinder( r= 5, $fn= 32, h= 1.68 );
                translate( v= [ 0, 126, 0 ] )
                {
                  cylinder( r= 5, $fn= 32, h= 1.68 );
                }
                translate( v= [ 10, 0, 0 ] )
                {
                  cylinder( r= 5, $fn= 32, h= 1.68 );
                }
                translate( v= [ 10, 126, 0 ] )
                {
                  cylinder( r= 5, $fn= 32, h= 1.68 );
                }
              }
              resize( newsize= [ 0, 0, 27.5 ] )
              {
                hull()
                {
                  translate( v= [ 0, 26, 0 ] )
                  {
                    cylinder( r= 5, $fn= 32, h= 1.68 );
                  }
                  translate( v= [ 0, 100, 0 ] )
                  {
                    cylinder( r= 5, $fn= 32, h= 1.68 );
                  }
                  translate( v= [ 16, 26, 0 ] )
                  {
                    cylinder( r= 5, $fn= 32, h= 1.68 );
                  }
                  translate( v= [ 16, 100, 0 ] )
                  {
                    cylinder( r= 5, $fn= 32, h= 1.68 );
                  }
                }
              }
            }
          }
          translate( v= [ 11.5, 68, 12.5 ] )
          {
            cube( size= [ 24, 79, 28 ], center= true );
          }
          translate( v= [ 8, 68, 25 ] )
          {
            cube( size= [ 20, 8, 10 ], center= true );
          }
          translate( v= [ 0, 61, 0 ] )
          {
            translate( v= [ 16, 68, 0 ] )
            {
              cylinder( r= 1.7, center= true, $fn= 32, h= 5 );
            }
          }
          translate( v= [ 0, -61, 0 ] )
          {
            translate( v= [ 16, 68, 0 ] )
            {
              cylinder( r= 1.7, center= true, $fn= 32, h= 5 );
            }
          }
        }
      }
    }
  }
}
