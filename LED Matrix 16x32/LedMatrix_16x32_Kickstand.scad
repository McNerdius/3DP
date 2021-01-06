union() // SharpSCAD generated scene: LedMatrix_16x32_Kickstand
{
  difference()
  {
    union()
    {
      translate( v= [ 1.4, 0, 1.4 ] )
      {
        rotate( a= [ 0, -60, 0 ] )
        {
          translate( v= [ -1.4, 0, -1.4 ] )
          {
            hull()
            {
              translate( v= [ 1.4, 0, 1.4 ] )
              {
                rotate( a= [ -90, 0, 0 ] )
                {
                  cylinder( r= 1.4, $fn= 24, h= 45 );
                }
              }
              translate( v= [ 54, 6, 0 ] )
              {
                cylinder( r= 6, $fn= 24, h= 2.8 );
              }
            }
          }
        }
      }
      hull()
      {
        translate( v= [ 1.4, 0, 1.4 ] )
        {
          rotate( a= [ -90, 0, 0 ] )
          {
            cylinder( r= 1.4, $fn= 24, h= 45 );
          }
        }
        translate( v= [ 60, 0, 0 ] )
        {
          translate( v= [ 1.4, 0, 1.4 ] )
          {
            rotate( a= [ -90, 0, 0 ] )
            {
              cylinder( r= 1.4, $fn= 24, h= 45 );
            }
          }
        }
      }
      translate( v= [ 10, 2.8, 5 ] )
      {
        rotate( a= [ 0, 30, 0 ] )
        {
          rotate( a= [ 90, 0, 0 ] )
          {
            cylinder( r= 10, $fn= 3, h= 2.8 );
          }
        }
      }
    }
    rotate( a= [ 0, -60, 0 ] )
    {
      translate( v= [ 20, -1, -0.1 ] )
      {
        cube( size= [ 12, 40, 1.2 ] );
      }
    }
    rotate( a= [ 0, -60, 0 ] )
    {
      union()
      {
        translate( v= [ 15, 8.5, 0 ] )
        {
          cylinder( r= 1.7, center= true, $fn= 32, h= 4 );
        }
        translate( v= [ 20, 0, 0 ] )
        {
          translate( v= [ 15, 8.5, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 4 );
          }
        }
        translate( v= [ 33, 0, 0 ] )
        {
          translate( v= [ 15, 8.5, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 4 );
          }
        }
      }
    }
    translate( v= [ 14, 8, 0 ] )
    {
      { // module: holegrid
        union()
        {
          translate( v= [ 0, 0, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 0, 10, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 0, 20, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 0, 30, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 10, 0, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 10, 10, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 10, 20, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 10, 30, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 20, 0, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 20, 10, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 20, 20, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 20, 30, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 30, 0, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 30, 10, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 30, 20, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 30, 30, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 40, 0, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 40, 10, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 40, 20, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
          translate( v= [ 40, 30, 0 ] )
          {
            cylinder( r= 1.7, center= true, $fn= 32, h= 6 );
          }
        }
      }
    }
  }
}
