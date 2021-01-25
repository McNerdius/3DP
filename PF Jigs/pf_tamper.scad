union() // SharpSCAD generated scene: pf_tamper
{
  { // module: pf_tamper
    union()
    {
      translate( v= [ 0, 0, 4 ] )
      {
        rotate( a= [ 90, 30, 0 ] )
        {
          cylinder( r= 4, center= true, $fn= 3, h= 66 );
        }
      }
      cylinder( r= 36, $fn= 96, h= 2.4 );
      translate( v= [ 1, -33, 0 ] )
      {
        rotate( a= [ 0, -90, 0 ] )
        {
          translate( v= [ 3, 3, 0 ] )
          {
            hull()
            {
              cylinder( r= 3, $fn= 64, h= 2 );
              translate( v= [ 16, 0, 0 ] )
              {
                cylinder( r= 3, $fn= 64, h= 2 );
              }
              translate( v= [ 0, 60, 0 ] )
              {
                cylinder( r= 3, $fn= 64, h= 2 );
              }
              translate( v= [ 16, 60, 0 ] )
              {
                cylinder( r= 3, $fn= 64, h= 2 );
              }
            }
          }
        }
      }
    }
  }
}
