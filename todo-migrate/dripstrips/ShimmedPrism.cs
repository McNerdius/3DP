using System.Linq;

using SharpSCAD;

using static Constants;

using static SharpSCAD.OpenSCAD;

public class ShimmedPrism : Module
{
    public double Length { get; init; } = 50;

    public override ScadObject Content
    => new Difference( parent: Prism( Length, Radius.Outer ) )
        {
            outerShim(Length),
            innerShim(Length),
            tube(Length)
        };

    // private

    internal static ScadObject outerShim( double length )
        => Prism( ShimDepth, Radius.Outer + 6 )
            .Except( Prism( ShimDepth, Radius.Outer - 2 ) )
            .Translate( z: (length - (ShimDepth - 1)) / 2d );

    public static ScadObject Prism( double height, double Radius )
        => new Cylinder( height, Radius, center: true, fn: 3 );

    internal static ScadObject innerShim( double length )
        => Prism( ShimDepth, Radius.Outer - 2 )
            .Translate( z: -(length - (ShimDepth - 1)) / 2d );

    internal static Cylinder tube( double length )
        => cylinder( length + 2, Radius.Inner, center: true, fn: 64 );

}
