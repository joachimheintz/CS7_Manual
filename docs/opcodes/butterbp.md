<!--
id:butterbp
category:Signal Modifiers:Standard Filters
-->
# butterbp
A band-pass Butterworth filter.

Implementation of a second-order band-pass Butterworth filter. This opcode can also be written as [butbp](../../opcodes/butbp).

## Syntax
``` csound-orc
ares butterbp asig, xfreq, xband [, iskip]
```

### Initialization

_iskip_ (optional, default=0) -- Skip initialization if present and non-zero.

### Performance

These filters are Butterworth second-order IIR filters. They are slightly slower than the original filters in Csound, but they offer an almost flat passband and very good precision and stopband attenuation.

_asig_ -- Input signal to be filtered.

_xfreq_ -- Cutoff or center frequency for each of the filters.

_xband_ -- Bandwidth of the bandpass and bandreject filters.

## Examples

Here is an example of the butterbp opcode. It uses the file [butterbp.csd](../../examples/butterbp.csd).

``` csound-csd title="Example of the butterbp opcode." linenums="1"
--8<-- "examples/butterbp.csd"
```

## See also

[Standard filters: Butterworth filters](../../sigmod/standard)

## Credits

Author: Paris Smaragdis<br>
MIT, Cambridge<br>
1995<br>

Existed in 3.30

Audio rate parameters introduced in version 6.02

October 2013.
