
using SharpSCAD;
using SharpSCAD.McSCAD;

using static SharpSCAD.OpenSCAD;

var cutout = new Union
{
    cylinder(height: 5, radius: 1.5, center: true, fn: 6),
    new RoundedCube(2.5,8,5,1,center: true).Translate(x: 11),
    new RoundedCube(2.5,8,5,1,center: true).Translate(x: -11)
}.Translate( x: -42 );

new Scene( "HalfSBB" )
{

    new Difference
    {
        new RoundedCube(114,104,2.4,1.2,center:true),
        cutout.Translate(y: 0),
        cutout.Translate(y: -20),
        cutout.Translate(y: -40),
        cutout.Translate(y: 20),
        cutout.Translate(y: 40),
    }.Translate(x: 28, z:1.2)

}.Save();

