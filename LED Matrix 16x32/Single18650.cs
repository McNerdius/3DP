
using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace Karmatach.ThreeDeePee.LED_Matrix
{
    // this one is particularily rough...
    public class Single18650 : Module
    {
        public override ScadObject Content
        {
            get
            {
                var h = 1.68;
                var corner_r = 5;

                var screwHole = cylinder( 5, 1.7, center: true, fn: 32 ).Translate( x: 16, y: 136 / 2.0 );//.Rotate( y: 90 ).Translate( x: 1, z: 6 );
                var corner = cylinder( h, corner_r, fn: 32 );

                var shell = new Union
                {
                    new Hull
                    {
                        corner,
                        corner.Translate(y:126),

                        corner.Translate(x:10),
                        corner.Translate(x:10, y:126),
                    },
                    new Hull
                    {
                        corner.Translate( y: 26),
                        corner.Translate( y: 126-26),
                        corner.Translate( x: 16, y: 26),
                        corner.Translate( x: 16, y: 126-26),
                    }.Resize(z:27.5)

                }.Translate( x: corner_r, y: corner_r );

                return new Difference( shell )
                {
                    cube(24,79,28,center:true).Translate(x:11.5,y:68,z:12.5),
                    cube(20,8,10,center:true).Translate(x:8, y:68, z:25),

                    screwHole.Translate(y:61),
                    screwHole.Translate(y:-61)
                }.Rotate( y: 90 ).Translate( z: 26 );
            }
        }
    }
}