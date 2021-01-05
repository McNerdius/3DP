using System;
using System.Collections;
using System.Linq;

namespace functions
{
    public static class RangeExtension
    {
        public static IEnumerator GetEnumerator( this Range range )
            => Enumerable.Range( range.Start.Value, range.End.Value - range.Start.Value + 1 ).GetEnumerator();
    }
}
