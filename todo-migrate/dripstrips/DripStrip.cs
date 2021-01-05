using System;
using System.Linq;
using System.Collections.Generic;

using SharpSCAD;

using static Constants;

using static SharpSCAD.OpenSCAD;

public class DripStrip : ShimmedPrism
{
    public double HoleRadius { get; init; } = 2;
    public double HoleTaper { get; init; } = 1;
    public double HoleSpacing { get; init; } = 10;

    public bool Holes { get; init; } = true;

    public override ScadObject Content
        => base.Content.Except( holes() );

    private ScadObject holes()
    {
        if ( !Holes )
            return ScadObject.Empty;

        var holes = (Length - (ShimDepth * 2)) / HoleSpacing;
        var max = (int) System.Math.Round( holes, MidpointRounding.ToZero );
        var offset = Length - (max * HoleSpacing);

        return union( getHoles().ToArray() )
            .Translate( z: -(Length - offset - HoleSpacing) / 2.0 );

        IEnumerable<ScadObject> getHoles()
        {
            var holeSize = HoleRadius;
            foreach ( var i in Enumerable.Range( 0, max ) )
            {
                var hole = cylinder( height: ShimDepth, radius: holeSize, fn: 24 )
                    .Rotate( x: 90, z: -90 )
                    .Translate( z: i * HoleSpacing );
                holeSize *= HoleTaper;
                yield return hole;
            }
        }
    }
}
