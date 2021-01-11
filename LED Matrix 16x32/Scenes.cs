
namespace Karmatach.ThreeDeePee
{
    using LED_Matrix;

    using SharpSCAD;

    public static partial class Scenes
    {
        public static Scene LedMatrix_16x32_Kickstand => new Scene( "kickstand" )
        {
            new Kickstand()
        };

        public static Scene LedMatrix_16x32_Board => new Scene( "board" )
        {
            new Board()
        };

        public static Scene LedMatrix_16x32_Single18650 => new Scene( "battery_holder" )
        {
            new Single18650()
        };


        public static Scene LedMatrix_16x32_Assembled => new Scene( "assembled" )
        {
            new Union
            {
                new Board().Rotate(y:-60).Translate(x:-2),
                new Kickstand().Translate(y:5),
                new Kickstand().Mirror(y:true).Translate(y:144),
                new Single18650().Rotate(y:30).Translate(x:30, y: 6.5, z:50)
            }.Rotate( z: 60 )
        };
    }
}