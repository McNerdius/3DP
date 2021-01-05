
using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace Karmatach.ThreeDeePee
{
    public static partial class Models
    {
        public static Scene SolderTwister
        => new( "twisty" )
        {
            cylinder( height: 3, radius: 5, fn: 64 ),
            cylinder( height: 70, bottomRadius: 4.2, topRadius: 4.5, fn: 128 ),
            sphere( radius: 4.5, fn: 128 ).Translate( z: 70 ),
            new Torus( 1.75, 4.5, 64 ).Rotate( x: 90 ).Translate( z: 75.5 )
        };
    }
}