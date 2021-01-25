
using Karmatach.ThreeDeePee.PF_Helpers;

using SharpSCAD;

namespace Karmatach.ThreeDeePee
{
    public static partial class Scenes
    {
        public static Scene Jar_Jig( Jar jig_for_jar )
            => new( jig_for_jar.Description ) { new Jar_Jig() { Jar = jig_for_jar } };

        public static Scene Hole_Jig => new( "square_jig" )
        {
            new Hole_Jig()
        };

        public static Scene PF_Tamper => new( "pf_tamper" )
        {
            new PF_Tamper()
        };
    }
}