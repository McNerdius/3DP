
using SharpSCAD;

using static SharpSCAD.OpenSCAD;
using System.Collections.Generic;
using System.Linq;

namespace Karmatach.ThreeDeePee
{
    public class HoleGrid : Module
    {
        public (int X, int Y) GridSize { get; init; }
        public (double R, double H) HoleSize { get; init; } = (1.7, 6);
        public double Spacing { get; init; } = 20;

        public override ScadObject Content
        {
            get
            {
                var screwHole = cylinder( HoleSize.H, HoleSize.R, center: true, fn: 32 );
                return holes().ToArray();

                IEnumerable<ScadObject> holes()
                {
                    foreach ( var x in 0..GridSize.X )
                    {
                        foreach ( var y in 0..GridSize.Y )
                        {
                            yield return screwHole.Translate( x * Spacing, y * Spacing );
                        }
                    }
                }
            }
        }
    }
}