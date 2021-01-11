using System.Collections.Generic;
using System.Linq;

using SharpSCAD;

using static SharpSCAD.OpenSCAD;
using static SharpSCAD.Math;
using Karmatach.ThreeDeePee.PF_Jig;

namespace Karmatach.ThreeDeePee
{
    public static partial class Scenes
    {
        public static Scene PF_Jig( Jar jig_for_jar )
            => new( jig_for_jar.Description ) { new PF_Jig.PF_Jig() { Jar = jig_for_jar } };
    }

    namespace PF_Jig
    {
        public class PF_Jig : Module
        {
            public Jar Jar { get; init; } = Jar.Normal;

            public override ScadObject Content
            => new Hull
            {
            corner(),
            corner().Rotate(z:120),
            corner().Rotate(z:-120)
            }.Except( holes().ToArray() );

            private ScadObject corner()
            {
                var r = Jar.Diameter / 10.0;
                var t = Jar.Radius - r;
                return cylinder( 3, r, center: true, fn: 32 ).Translate( t );
            }

            private IEnumerable<ScadObject> holes()
            {
                var hole = cylinder( 4, 1.5, center: true, fn: 32 );

                yield return hole;

                var max = Sin( 30 ) * Jar.Diameter;

                for ( var i = Jar.Spacing; i <= max; i += Jar.Spacing )
                {
                    yield return hole.Translate( i );
                    yield return hole.Translate( i ).Rotate( z: 120 );
                    yield return hole.Translate( i ).Rotate( z: -120 );
                }
            }
        }
    }
}