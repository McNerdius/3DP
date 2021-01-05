
using SharpSCAD;

using static SharpSCAD.OpenSCAD;
using SharpSCAD.McSCAD;

namespace functions
{
    public class KeyCap : Module
    {
        public double Width { get; init; } = 18;
        public double Depth { get; init; } = 18;
        public double Height { get; init; } = 5.5;
        public double CornerRadius { get; init; } = 2;
        public double StemClearance { get; init; } = 0.15;

        public virtual double TopThickness { get; init; } = 1;

        public override ScadObject Content => union( Shell, Stem( Height ) );

        public ScadObject Shell
        => new Difference( new RoundedCube( Width, Depth, Height, CornerRadius, center: true )
        { Rounded = new RoundedCube.Rounding() with { Bottom = false } } )
        {
            new RoundedCube( Width - 2, Depth - 2, Height * 1.01, CornerRadius, center: true )
                .Translate( z: -TopThickness )
        };

        public ScadObject Stem( double height ) // magic numbers... hmmm...
        => new Difference( cube( 5.5, 4.2, height, center: true ) )
        {
            cube( 4.2 + (2 * StemClearance), 1.3 + (2 * StemClearance), 10, center: true),
            cube( 1.1 + (2 * StemClearance), 7   + (2 * StemClearance), 10, center: true)
        };
    }
}
