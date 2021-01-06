
using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace Karmatach.ThreeDeePee
{
    public static partial class Models
    {
        public static Scene MatrixBoard_Kickstand
        {
            get
            {
                var w = 2.8;
                var r = 6;

                var corner = cylinder( 45, w / 2.0, fn: 24 ).Rotate( x: -90 ).Translate( x: w / 2.0, z: w / 2.0 );
                var screwHole = cylinder( 4, 1.7, center: true, fn: 32 ).Translate( x: 15, y: 8.5 );

                var mainBits = new Union
                {
                    new Hull
                    {
                        corner,
                        cylinder( w, r, fn: 24 ).Translate(x:57-r/2.0,y:r)
                    }.Translate( x: -w / 2.0, z: -w / 2.0 ).Rotate( y: -60 ).Translate( x: w / 2.0, z: w / 2.0 ),
                    new Hull
                    {
                        corner,
                        corner.Translate(x:60)
                    },
                    cylinder( w, 10, fn: 3 ).Rotate( x: 90 ).Rotate( y: 30 ).Translate( x: 10, y: w, z: 5 )
                };

                var screwHoles = new Union
                {
                    screwHole,
                    screwHole.Translate(x:20),
                    screwHole.Translate(x:20+13),
                };

                return new( "LedMatrix_16x32_Kickstand" )
                {
                    new Difference( mainBits )
                    {
                        cube(12,40,1.2).Translate(x:20,y: -1,z:-0.1).Rotate(y:-60), // path for wires
                        screwHoles.Rotate(y:-60),
                        new HoleGrid { GridSize = (5, 4), Spacing = 10 }.Translate(x: 14, y: 8)
                    }
                };
            }
        }

        public static Scene MatrixBoard
        {
            get
            {
                var corner = cylinder( 2.4, 8, center: true, fn: 32 );

                var board = new Hull
                (
                    corner,
                    corner.Translate( y: 70 ),
                    corner.Translate( x: 133 ),
                    corner.Translate( x: 133, y: 70 )
                );

                var screwHole = cylinder( 4, 1.7, center: true, fn: 32 ).Translate( x: 5.5, y: 8.5 );

                return new( "LedMatrix_16x32_Board" )
                {
                    new Difference( board )
                    {
                        screwHole,
                        screwHole.Translate(y:20),
                        screwHole.Translate(y:20+13),
                        screwHole.Translate(y:20+13+20),

                        screwHole.Translate(x:122 ),
                        screwHole.Translate(x:122, y:20),
                        screwHole.Translate(x:122, y:20+13),
                        screwHole.Translate(x:122, y:20+13+20),

                        new HexGrid() { Spacing = 2, HexSize = (7,6), Size = (7,5) }.Translate(21,10)
                    }
                };
            }
        }
    }
}