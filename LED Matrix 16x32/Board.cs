
using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace Karmatach.ThreeDeePee.LED_Matrix
{
    public class Board : Module
    {
        public override ScadObject Content
        {
            get
            {
                var corner = cylinder( 2.4, 8, center: true, fn: 32 );

                var board = new Hull
                (
                    corner,
                    corner.Translate( y: 70 ),
                    corner.Translate( x: 133 ),
                    corner.Translate( x: 133, y: 70 )
                );

                var screwHole = cylinder( 4, 1.7, center: true, fn: 32 ).Translate( x: 5.5, y: 8.5 );

                return new Difference( board )
                    {
                        screwHole,
                        screwHole.Translate(y:20),
                        screwHole.Translate(y:20+13),
                        screwHole.Translate(y:20+13+20),

                        screwHole.Translate(x:122 ),
                        screwHole.Translate(x:122, y:20),
                        screwHole.Translate(x:122, y:20+13),
                        screwHole.Translate(x:122, y:20+13+20),

                        new HexGrid() { Spacing = 2, HexSize = (7,6), Size = (7,5) }.Translate(21,10)

                    }.Translate( x: 8, y: 8 ).Rotate( z: 90 ).Translate( x: 86 );
            }
        }
    }
}