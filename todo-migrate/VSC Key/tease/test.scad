union() // SharpSCAD generated scene: test
{
  { // module: keycap
    union()
    {
      difference()
      {
        { // module: roundedcube
          translate( v= [ -9, -9, -2.75 ] )
          {
            translate( v= [ 0, 0, 0 ] )
            {
              hull()
              {
                translate( v= [ 1, 1, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 17, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 1, 4.5 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 17, 4.5 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 17, 1, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 17, 17, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 17, 1, 4.5 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 17, 17, 4.5 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                union()
                {
                  cube( size= [ 18, 18, 1 ] );
                }
              }
            }
          }
        }
        translate( v= [ 0, 0, -1 ] )
        {
          { // module: roundedcube
            translate( v= [ -8, -8, -2.7775 ] )
            {
              translate( v= [ 0, 0, 0 ] )
              {
                hull()
                {
                  translate( v= [ 1, 1, 1 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 1, 15, 1 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 1, 1, 4.555 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 1, 15, 4.555 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 15, 1, 1 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 15, 15, 1 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 15, 1, 4.555 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 15, 15, 4.555 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  union()
                  {
                  }
                }
              }
            }
          }
        }
      }
      difference()
      {
        cube( size= [ 6, 6, 5.5 ], center= true );
        cube( size= [ 4.24, 1.54, 10 ], center= true );
        cube( size= [ 1.54, 4.24, 10 ], center= true );
      }
    }
  }
}
