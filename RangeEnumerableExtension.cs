// enables `foreach (int i in 1..4) {}`

// https://github.com/dotnet/docs/pull/20689
// https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/proposals/csharp-9.0/extension-getenumerator

using System;
using System.Collections.Generic;
using System.Linq;

public static class RangeEnumeratorExtension
{
    // whichever floats your boat
    public static IEnumerator<int> GetEnumerator( this Range range )
     // => GetEnumeratorInclusive( range );
     => GetEnumeratorExclusive( range );

    public static IEnumerator<int> GetEnumeratorInclusive( this Range range )
        => Enumerable.Range( range.Start.Value, range.End.Value - range.Start.Value + 1 ).GetEnumerator();

    public static IEnumerator<int> GetEnumeratorExclusive( this Range range )
        => Enumerable.Range( range.Start.Value, range.End.Value - range.Start.Value ).GetEnumerator();
}