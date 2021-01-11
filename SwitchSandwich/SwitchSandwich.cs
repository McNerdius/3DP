
using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace Karmatach.ThreeDeePee
{
    public static partial class Scenes
    {
        public static Scene SwitchSandwich
        {
            get
            {
                var corner = cylinder( 6.5, 2, center: true, fn: 32 ).Translate( x: 2, y: 2 );
                var screwHole = cylinder( 20, 1.7, center: true, fn: 24 ).Translate( x: 16 );

                var body = new Hull
                {
                    corner,
                    corner.Translate(x:28),
                    corner.Translate(y:26),
                    corner.Translate(x:28,y:26)
                }.Translate( z: 3.25 );

                var wireCutouts = new Union
                {
                    cube(36,7,4).Translate(x: -2,y:11.5,z: -0.1),

                    cube(9,34,2).Translate(x:11.5-9, y:-2,z:-0.1),
                    cube(9,34,2).Translate(x:11.5+9, y:-2,z:-0.1),

                    cylinder(10,2.4,fn:24).Translate(x:16-9, y: 5, z: -0.2),
                    cylinder(10,2.4,fn:24).Translate(x:16+9, y: 5, z: -0.2)
                };

                var switchCutouts = new Union
                {
                    cylinder(5.5,8,fn:32).Translate(x:16,y:15,z:-0.25),
                    cylinder(7,4.6,fn:24).Translate(x:16,y:15,z:-0.3)
                };

                return new Scene( "SwitchSandwich" )
                {
                    new Difference(body)
                    {
                        wireCutouts,
                        switchCutouts,
                        screwHole.Translate(y:5),
                        screwHole.Translate(y:25)
                    }
                };
            }
        }
    }
}