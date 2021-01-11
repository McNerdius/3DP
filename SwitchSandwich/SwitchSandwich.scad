union() // SharpSCAD generated scene: SwitchSandwich
{
  difference()
  {
    translate( v= [ 0, 0, 3.25 ] )
    {
      hull()
      {
        translate( v= [ 2, 2, 0 ] )
        {
          cylinder( r= 2, center= true, $fn= 32, h= 6.5 );
        }
        translate( v= [ 28, 0, 0 ] )
        {
          translate( v= [ 2, 2, 0 ] )
          {
            cylinder( r= 2, center= true, $fn= 32, h= 6.5 );
          }
        }
        translate( v= [ 0, 26, 0 ] )
        {
          translate( v= [ 2, 2, 0 ] )
          {
            cylinder( r= 2, center= true, $fn= 32, h= 6.5 );
          }
        }
        translate( v= [ 28, 26, 0 ] )
        {
          translate( v= [ 2, 2, 0 ] )
          {
            cylinder( r= 2, center= true, $fn= 32, h= 6.5 );
          }
        }
      }
    }
    union()
    {
      translate( v= [ -2, 11.5, -0.1 ] )
      {
        cube( size= [ 36, 7, 4 ] );
      }
      translate( v= [ 2.5, -2, -0.1 ] )
      {
        cube( size= [ 9, 34, 2 ] );
      }
      translate( v= [ 20.5, -2, -0.1 ] )
      {
        cube( size= [ 9, 34, 2 ] );
      }
      translate( v= [ 7, 5, -0.2 ] )
      {
        cylinder( r= 2.4, $fn= 24, h= 10 );
      }
      translate( v= [ 25, 5, -0.2 ] )
      {
        cylinder( r= 2.4, $fn= 24, h= 10 );
      }
    }
    union()
    {
      translate( v= [ 16, 15, -0.25 ] )
      {
        cylinder( r= 8, $fn= 32, h= 5.5 );
      }
      translate( v= [ 16, 15, -0.3 ] )
      {
        cylinder( r= 4.6, $fn= 24, h= 7 );
      }
    }
    translate( v= [ 0, 5, 0 ] )
    {
      translate( v= [ 16, 0, 0 ] )
      {
        cylinder( r= 1.7, center= true, $fn= 24, h= 20 );
      }
    }
    translate( v= [ 0, 25, 0 ] )
    {
      translate( v= [ 16, 0, 0 ] )
      {
        cylinder( r= 1.7, center= true, $fn= 24, h= 20 );
      }
    }
  }
}
