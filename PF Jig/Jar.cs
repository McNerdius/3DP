namespace Karmatach.ThreeDeePee.PF_Jig
{
    public class Jar
    {
        public double Diameter { get; init; }
        public double Radius => Diameter / 2.0;

        public double Spacing { get; init; }
        public string Description { get; init; }

        public static Jar Small => new()
        {
            Description = "Ball 4oz",
            Diameter = 56.65,
            Spacing = 12.25
        };

        public static Jar Normal => new()
        {
            Description = "Kerr 8oz",
            Diameter = 75.25,
            Spacing = 16.65
        };
    }
}
