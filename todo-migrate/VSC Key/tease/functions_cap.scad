union() // SharpSCAD generated scene: functions_cap
{
  { // module: logocap
    union()
    {
      translate( v= [ 0, 0, 4 ] )
      {
        difference()
        {
          { // module: roundedcube
            translate( v= [ -9, -9, -4 ] )
            {
              translate( v= [ 0, 0, 0 ] )
              {
                hull()
                {
                  translate( v= [ 2.4, 2.4, 2.4 ] )
                  {
                    sphere( r= 2.4, $fn= 32 );
                  }
                  translate( v= [ 2.4, 15.6, 2.4 ] )
                  {
                    sphere( r= 2.4, $fn= 32 );
                  }
                  translate( v= [ 2.4, 2.4, 5.6 ] )
                  {
                    sphere( r= 2.4, $fn= 32 );
                  }
                  translate( v= [ 2.4, 15.6, 5.6 ] )
                  {
                    sphere( r= 2.4, $fn= 32 );
                  }
                  translate( v= [ 15.6, 2.4, 2.4 ] )
                  {
                    sphere( r= 2.4, $fn= 32 );
                  }
                  translate( v= [ 15.6, 15.6, 2.4 ] )
                  {
                    sphere( r= 2.4, $fn= 32 );
                  }
                  translate( v= [ 15.6, 2.4, 5.6 ] )
                  {
                    sphere( r= 2.4, $fn= 32 );
                  }
                  translate( v= [ 15.6, 15.6, 5.6 ] )
                  {
                    sphere( r= 2.4, $fn= 32 );
                  }
                  union()
                  {
                    cube( size= [ 18, 18, 2.4 ] );
                  }
                }
              }
            }
          }
          translate( v= [ 0, 0, -3.2 ] )
          {
            { // module: roundedcube
              translate( v= [ -8.2, -8.2, -4.04 ] )
              {
                translate( v= [ 0, 0, 0 ] )
                {
                  hull()
                  {
                    translate( v= [ 2.4, 2.4, 2.4 ] )
                    {
                      sphere( r= 2.4, $fn= 32 );
                    }
                    translate( v= [ 2.4, 14, 2.4 ] )
                    {
                      sphere( r= 2.4, $fn= 32 );
                    }
                    translate( v= [ 2.4, 2.4, 5.68 ] )
                    {
                      sphere( r= 2.4, $fn= 32 );
                    }
                    translate( v= [ 2.4, 14, 5.68 ] )
                    {
                      sphere( r= 2.4, $fn= 32 );
                    }
                    translate( v= [ 14, 2.4, 2.4 ] )
                    {
                      sphere( r= 2.4, $fn= 32 );
                    }
                    translate( v= [ 14, 14, 2.4 ] )
                    {
                      sphere( r= 2.4, $fn= 32 );
                    }
                    translate( v= [ 14, 2.4, 5.68 ] )
                    {
                      sphere( r= 2.4, $fn= 32 );
                    }
                    translate( v= [ 14, 14, 5.68 ] )
                    {
                      sphere( r= 2.4, $fn= 32 );
                    }
                    union()
                    {
                    }
                  }
                }
              }
            }
          }
          translate( v= [ -9, -9, 2 ] )
          {
            translate( v= [ 0.6, 1.1421, 0 ] )
            {
              resize( newsize= [ 0, 15.5, 2 ], auto= true )
              {
                linear_extrude( height= 1.6 )
                {
                  import( file= "../assets/functions/filled.svg" );
                }
              }
            }
          }
        }
      }
      translate( v= [ 0, 0, 2.4 ] )
      {
        difference()
        {
          cube( size= [ 5.5, 4.2, 4.8 ], center= true );
          cube( size= [ 4.5, 1.6, 10 ], center= true );
          cube( size= [ 1.4, 7.3, 10 ], center= true );
        }
      }
    }
  }
}
