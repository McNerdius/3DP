
using SharpSCAD;

using static SharpSCAD.OpenSCAD;

namespace Karmatach.ThreeDeePee
{
    namespace PF_Helpers
    {
        public class PF_Tamper : Module
        {
            public override ScadObject Content => new Union
            {
                cylinder(66,4,center:true, fn:3).Rotate(x:90,y:30).Translate(z:4),
                cylinder(2.4,36,fn:96),
                new Hull
                {
                    cylinder(2,3,fn:64),
                    cylinder(2,3,fn:64).Translate(x:16),
                    cylinder(2,3,fn:64).Translate(y:60),
                    cylinder(2,3,fn:64).Translate(x:16,y:60)
                }.Translate(x:3,y:3).Rotate(y:-90).Translate(x: 1, y:-33)
            };
        }
    }
}