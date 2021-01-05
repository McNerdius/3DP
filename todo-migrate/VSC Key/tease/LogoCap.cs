using System;
using System.Reflection.Metadata;

using SharpSCAD;
using SharpSCAD.McSCAD;

namespace functions
{
    using static SharpSCAD.OpenSCAD;

    public class LogoCap : KeyCap
    {
        public string CutoutFile { get; init; }
        public double CutoutDepth { get; init; } = 2;

        public double ScaleY { get; init; } = 1;
        public (double X, double Y) MoveLogo { get; init; } = (0, 0);

        public LogoCap( string cutoutFile ) => CutoutFile = cutoutFile;

        public override ScadObject Content
        => new Union
        {
            new Difference( new RoundedCube( Width, Depth, Height + CutoutDepth, CornerRadius, center: true )
                           { Rounded = new RoundedCube.Rounding() with { Bottom = false } } )
            {
                new RoundedCube(
                        Width - 1.6, Depth - 1.6, (Height + CutoutDepth) * 1.01,
                        CornerRadius, center: true).Translate( z: -(TopThickness+CutoutDepth) ),

                Cutout.Translate(x: -Width/2.0, y: -Depth/2.0, (Height-CutoutDepth)/2.0)

            }.Translate(z:(Height+CutoutDepth)/2.0 ),

            Stem(Height-TopThickness).Translate(z:(Height-TopThickness)/2.0),
        };

        public ScadObject Cutout
        => new Import( CutoutFile )
                .LinearExtrude( 1.6 )
                .Resize( y: (Depth * ScaleY) - 1.6, z: CutoutDepth, auto: true )
                .Translate( 0.8 + MoveLogo.X, (0.8 * (1 / ScaleY)) + MoveLogo.Y );

    }
}
