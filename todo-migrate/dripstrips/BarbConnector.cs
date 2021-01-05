using SharpSCAD;

using static SharpSCAD.OpenSCAD;
using static ShimmedPrism;

public class BarbConnector : Module
{
    public double Radius { get; init; } = 8.2;
    public double BarbLength { get; init; } = 20;
    public double Taper { get; init; } = 0.9;

    public override ScadObject Content
        => barb.Union( shim.Translate( z: 10 ) )
               .Except( tube( BarbLength + 22 )
               .Translate( z: 1 ) );

    private ScadObject shim
        => new Difference
        {
            Prism( 20, Constants.Radius.Outer ),
            innerShim(15)
        };

    private ScadObject barb
        => cylinder( height: BarbLength, bottomRadius: Radius * Taper, topRadius: Radius )
            .Translate( z: -BarbLength );

    // .Union( new ShimmedPrism { Length = 40 }.Mirror( z: true ).Translate( z: 20 ) )
    // .Except( cylinder( height: 100, radius: Constants.Radius.Inner, center: true ) );
}
