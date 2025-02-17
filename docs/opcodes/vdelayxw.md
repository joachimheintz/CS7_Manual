<!--
id:vdelayxw
category:Signal Modifiers:Delay
-->
# vdelayxw
Variable delay opcodes with high quality interpolation.

## Syntax
``` csound-orc
aout vdelayxw ain, adl, imd, iws [, ist]
```

### Initialization

_imd_ -- max. delay time (seconds)

_iws_ -- interpolation window size (see below)

_ist_ (optional) -- skip initialization if not zero

### Performance

_aout_ -- output audio signal

_ain_ -- input audio signal

_adl_ -- delay time in seconds

These opcodes use high quality (and slow) interpolation, that is much more accurate than the currently available linear and cubic interpolation. The _iws_ parameter sets the number of input samples used for calculating one output sample (allowed values are any integer multiply of 4 in the range 4 - 1024); higher values mean better quality and slower speed.

The _vdelayxw_ opcodes change the position of the write tap in the delay line (unlike all other delay ugens that move the read tap), and are most useful for implementing Doppler effects where the position of the listener is fixed, and the sound source is moving.

> :memo: **Notes**
>
> * Delay time is measured in seconds (unlike in vdelay and vdelay3), and must be a-rate.
> * The minimum allowed delay is iws/2 samples.
> * Using the same variables as input and output is allowed in these opcodes.
> * In vdelayxw*, changing the delay time has some effects on output volume:
> ```
> a = 1 / (1 + dt)
> ```
>  where a is the output gain, and dt is the change of delay time per seconds.
> * These opcodes are best used in the double-precision version of Csound.

## Examples

Here is an example of the use of the _vdelayxw_ opcode. It uses the file [vdelayxw.csd](../../examples/vdelayxw.csd).

``` csound-csd title="Example of the _vdelayxw_ opcode." linenums="1"
--8<-- "examples/vdelayxw.csd"
```

## See also

[Delay](../../sigmod/delayops)
