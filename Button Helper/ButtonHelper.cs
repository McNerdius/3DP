
using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace Karmatach.ThreeDeePee
{
    public static partial class Scenes
    {
        public static Scene ButtonHelper( double wireRadius = 1.7, double wireSpacing = 2.5 )
        => new( "handle" )
        {
            new Difference( cylinder( height: 50, topRadius: 8, bottomRadius: 12, fn: 6 )
                                .Translate( z: 1 ).Rotate( z: 30 ) )
            {
                cylinder(height: 120, wireRadius, fn: 16).Translate(x: wireSpacing),
                cylinder(height: 120, wireRadius, fn: 16).Translate(x: -wireSpacing),
                cylinder(height: 50 , wireRadius, fn: 16).Translate(y: wireSpacing*2),
                cylinder(height: 50 , wireRadius, fn: 16).Translate(y: -wireSpacing*2),
            }
        };
    }
}
