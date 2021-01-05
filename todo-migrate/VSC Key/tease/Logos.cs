using System.Collections.Generic;

using SharpSCAD;

namespace functions
{
    using static SharpSCAD.OpenSCAD;

    public class LogoGrid : Module
    {
        const double base_scale = 0.88;
        const double scale_increment = 0.03;
        const double height_increment = 0.2;

        public string LogoFile { get; init; }

        public LogoGrid( string logoFile )
        {
            LogoFile = logoFile;
        }

        public double KeyDepth { get; init; } = 18;
        public double LogoHeight { get; init; } = 1.6;

        public double LogoScaleY { get; init; } = 1;

        public override ScadObject Content
        {
            get
            {
                var logos = new List<ScadObject>();

                foreach ( int scale in 1..4 )
                {
                    foreach ( int height in 1..1 )
                    {
                        var s = base_scale + ((scale - 1) * scale_increment);
                        var h = LogoHeight + ((height - 1) * height_increment);

                        logos.Add( import( LogoFile )
                                    .LinearExtrude( LogoHeight )
                                    .Resize( y: (KeyDepth * LogoScaleY) - 1.6, z: h, auto: true )
                                    .Scale( s, s, h )
                                    .Translate( x: (scale - 1) * 20, y: (height - 1) * 20 ) );
                    }
                }

                return logos;
            }
        }
    }
}