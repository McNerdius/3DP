
using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace Karmatach.ThreeDeePee
{
    public class Torus : Module
    {
        public Torus( double r1, double r2, byte? fn = null )
        {
            R1 = r1;
            R2 = r2;
            FragmentCount = fn;
        }

        public double R1 { get; set; }
        public double R2 { get; set; }
        public byte? FragmentCount { get; set; }

        public override ScadObject Content
        => new Rotate_Extrude( 360, 1, 100 )
        {
            circle(R1, FragmentCount).Translate(x:R2-R1)
        };
    }
}