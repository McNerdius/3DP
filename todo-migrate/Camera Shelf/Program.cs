using System;

using SharpSCAD;

namespace CameraShelf
{
    using static OpenSCAD;
    using static Constants;

    class Program
    {
        static void Main( string[] args )
        {
            var shelfX = ShelfSize.X;
            var shelfY = ShelfSize.Y;
            var corner = CornerRadius;

            var mountCutout = new Polygon( (0, 0), (7, 0), (10, 62), (16, 72), (-16, 72), (-10, 62), (-7, 0) )
                .LinearExtrude( 30 ).Translate( z: -25 );

            var shelf = new Hull
            {
                circle(radius: corner,fn:32).Translate(x:corner, y: corner),
                circle(radius: corner,fn:32).Translate(x:shelfX - (corner), y: corner),
                circle(radius: corner,fn:32).Translate(x:corner, y: shelfY - (corner)),
                circle(radius: corner,fn:32).Translate(x:shelfX- (corner), y: shelfY- (corner)),
            }.LinearExtrude( 4 ).Translate( x: -7, y: -25 );

            var mount = cube( shelfX, RodSize + 8, RodSize )
                            .Except( cube( shelfX + 2, RodSize, RodSize + 2 ).Translate( x: -1, y: 4, z: -1 ) )
                            .Translate( x: -7, z: -RodSize );

            new Scene( "shelf" )
            {
                shelf.Union(mount).Except(mountCutout.Translate(y:-0.01))
            }.Save();
        }
    }
}