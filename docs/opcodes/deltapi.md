<!--
id:deltapi
category:Signal Modifiers:Delay
-->
# deltapi
Taps a delay line at variable offset times, uses interpolation.

## Syntax
``` csound-orc
ares deltapi xdlt
```

### Performance

_xdlt_ -- specifies the tapped delay time in seconds. Each can range from 1 control period to the full delay time of the read/write pair; however, since there is no internal check for adherence to this range, the user is wholly responsible. Each argument can be a constant, a variable, or a time-varying signal; the _xdlt_ argument in _deltapi_ implies that an audio-varying delay is permitted there.

_deltapi_ extracts sound by interpolated readout. By interpolating between adjacent stored samples _deltapi_ represents a particular delay time with more accuracy, but it will take about twice as long to run.

This opcode can tap into a [delayr](../../opcodes/delayr)/[delayw](../../opcodes/delayw) pair, extracting delayed audio from the _idlt_ seconds of stored sound. There can be any number of [deltap](../../opcodes/deltap) and/or _deltapi_ units between a read/write pair. Each receives an audio tap with no change of original amplitude.

This opcode can provide multiple delay taps for arbitrary delay path and feedback networks. They can deliver either constant-time or time-varying taps, and are useful for building chorus effects, harmonizers, and Doppler shifts. Constant-time delay taps (and some slowly changing ones) do not need interpolated readout; they are well served by _deltap_. Medium-paced or fast varying dlt's, however, will need the extra services of _deltapi_.

_delayr_/_delayw_ pairs may be interleaved. To associate a delay tap unit with a specific _delayr_ unit, it not only has to be located between that _delayr_ and the appropriate _delayw_ unit, but must also precede any following _delayr_ units. See Example 2. (This feature added in Csound version 3.57 by Jens Groh and John ffitch).

_N.B._ k-rate delay times are not internally interpolated, but rather lay down stepped time-shifts of audio samples; this will be found quite adequate for slowly changing tap times. For medium to fast-paced changes, however, one should provide a higher resolution audio-rate timeshift as input.

## Examples

``` csound-orc title="deltap example #1" linenums="1"
asource  buzz      1, 440, 20, 1
atime    linseg    1, p3/2,.01, p3/2,1   ; trace a distance in secs
ampfac   =         1/atime/atime         ; and calc an amp factor
adump    delayr    1                     ; set maximum distance
amove    deltapi   atime                 ; move sound source past
         delayw    asource               ; the listener
         out       amove * ampfac
```

``` csound-orc title="deltap example #1" linenums="1"
  ainput1 =	..... 
  ainput2 =	..... 
  kdlyt1  =	..... 
  kdlyt2  =	..... 

;Read delayed signal, first delayr instance:
  adump   delayr  4.0 
  adly1   deltap  kdlyt1       ; associated with first delayr instance

;Read delayed signal, second delayr instance:
  adump   delayr  4.0 
  adly2   deltap  kdlyt2       ; associated with second delayr instance

;Do some cross-coupled manipulation:
  afdbk1  =       0.7 * adly1 + 0.7 * adly2 + ainput1 
  afdbk2  =       -0.7 * adly1 + 0.7 * adly2 + ainput2 

;Feed back signal, associated with first delayr instance:
          delayw  afdbk1 

;Feed back signal, associated with second delayr instance:
          delayw  afdbk2
          outs    adly1, adly2
```

Here is yet another example of the deltapi opcode. It uses the file [deltapi.csd](../../examples/deltapi.csd).

``` csound-csd title="Example of the deltapi opcode." linenums="1"
--8<-- "examples/deltapi.csd"
```

## See also

[Delay](../../sigmod/delayops)
