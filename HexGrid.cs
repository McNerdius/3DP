

using System.Collections.Generic;
using System.Linq;

using SharpSCAD;

using static SharpSCAD.OpenSCAD;
using static System.Math;

namespace Karmatach.ThreeDeePee
{
    public class HexGrid : Module
    {
        public double Spacing { get; init; } = 1;
        public (double R, double H) HexSize { get; init; } = (3, 10);
        public (int X, int Y) Size { get; init; } = (3, 3);

        public override ScadObject Content
        {
            get
            {
                var hexagon = cylinder( HexSize.H, HexSize.R, center: true, fn: 6 ).Rotate( z: 30 );

                return hexagons().ToArray();

                IEnumerable<ScadObject> hexagons()
                {
                    foreach ( var x in 0..Size.X )
                    {
                        foreach ( var y in 0..Size.Y )
                        {
                            var offset = getOffset( x, y );
                            yield return hexagon.Translate( (x * HexSize.R * Sqrt( 3 )) + offset.x, (y * HexSize.R * 1.5) + offset.y );
                        }
                    }

                    (double x, double y) getOffset( int x, int y )
                    => (x % 2, y % 2) switch
                    {
                        (_, 1 ) => ((HexSize.R * Sqrt( 3 ) / 2.0) + Spacing * x + Spacing / 2.0, Spacing * y),
                        _ => (Spacing * x, Spacing * y)
                    };
                }
            }
        }
    }
}