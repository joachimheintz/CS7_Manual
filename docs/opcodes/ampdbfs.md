<!--
id:ampdbfs
category:Mathematical Operations:Amplitude Functions
-->
# ampdbfs
Returns the amplitude equivalent (in 16-bit signed integer scale) of the full scale decibel (dB FS) value _x_.

The logarithmic full scale decibel values will be converted to linear 16-bit signed integer values from −32,768 to +32,767.

## Syntax
``` csound-orc
ampdbfs(x)  (no rate restriction)
```

## Examples

Here is an example of the ampdbfs opcode. It uses the file [ampdbfs.csd](../../examples/ampdbfs.csd).

``` csound-csd title="Example of the ampdbfs opcode." linenums="1"
--8<-- "examples/ampdbfs.csd"
```

Its output should include lines like:

```
instr 1:  iamp = 29204.511
instr 1:  iamp = 18426.801
instr 1:  iamp = 16422.904
instr 1:  iamp = 3276.800
```

## See also

[Amplitude Converters](../../math/amp)

New in Csound version 4.10
