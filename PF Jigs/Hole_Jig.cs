
using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace Karmatach.ThreeDeePee
{
    namespace PF_Helpers
    {
        public class Hole_Jig : Module
        {
            const double x = 152.4 + 50.8 - 8;
            const double y = 50.8 - 8;

            public override ScadObject Content =>
            new Hull
            {
                cylinder(2,4,fn:24),
                cylinder(2,4,fn:24).Translate(x:x),
                cylinder(2,4,fn:24).Translate(y:y),
                cylinder(2,4,fn:24).Translate(x:x,y:y)
            }.Translate( x: 4, y: 4 )
                .Except( new HoleGrid { GridSize = (9, 3), HoleSize = (3.5, 4), Spacing = 25.4 }
                .Translate( z: 1 ) );
        }
    }
}