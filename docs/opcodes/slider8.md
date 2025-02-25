<!--
id:slider8
category:Real-time MIDI:Slider Banks
-->
# slider8
Creates a bank of 8 different MIDI control message numbers.

## Syntax
``` csound-orc
i1, ..., i8 slider8 ichan, ictlnum1, imin1, imax1, init1, ifn1, ..., \
                    ictlnum8, imin8, imax8, init8, ifn8
k1, ..., k8 slider8 ichan, ictlnum1, imin1, imax1, init1, ifn1, ..., \
                    ictlnum8, imin8, imax8, init8, ifn8
```

### Initialization

_i1 ... i8_ -- output values

_ichan_ -- MIDI channel (1-16)

_ictlnum1 ... ictlnum8_ -- MIDI control number (0-127)

_imin1 ... imin8_ -- minimum values for each controller

_imax1 ... imax8_ -- maximum values for each controller

_init1 ... init8_ -- initial value for each controller

_ifn1 ... ifn8_ -- function table for conversion for each controller

### Performance

_k1 ... k8_ -- output values

_slider8_ is a bank of MIDI controllers, useful when using MIDI mixer such as Kawai MM-16 or others for changing whatever sound parameter in real-time. The raw MIDI control messages at the input port are converted to agree with _iminN_ and _imaxN_,  and an initial value can be set. Also, an optional non-interpolated function table with a custom translation curve is allowed, useful for enabling exponential response curves.

When no function table translation is required, set the _ifnN_ value to 0, else set _ifnN_ to a valid function table number.  When table translation is enabled (i.e. setting _ifnN_ value to a non-zero number referring to an already allocated function table), _initN_ value should be set equal to _iminN_ or _imaxN_ value, else the initial output value will not be the same as specified in _initN_ argument.

_slider8_ allows a bank of 8 different MIDI control message numbers.

As the input and output arguments are many, you can split the line using '\' (backslash) character (new in 3.47 version) to improve the readability. Using these opcodes is considerably more efficient than using the separate ones ([ctrl7](../../opcodes/ctrl7) and [tonek](../../opcodes/tonek)) when more controllers are required.

In the i-rate version of _slider8_, there is not an initial value input argument, because the output is gotten directly from current status of internal controller array of Csound.

## See Also

[Slider Banks](../../midi/sliderbk)

## Credits

Author: Gabriel Maldonado<br>
Italy<br>
December 1998<br>

New in Csound version 3.50

Thanks goes to Rasmus Ekman for pointing out the correct MIDI channel and controller number ranges.
