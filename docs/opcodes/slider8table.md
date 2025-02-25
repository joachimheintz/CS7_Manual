<!--
id:slider8table
category:Real-time MIDI:Slider Banks
-->
# slider8table
Stores a bank of 8 different MIDI control messages to a table.

## Syntax
``` csound-orc
kflag slider8table ichan, ioutTable, ioffset, ictlnum1, imin1, imax1, \
                   init1, ifn1, ..., ictlnum8, imin8, imax8, init8, ifn8
```

### Initialization

_i1 ... i8_ -- output values

_ichan_ -- MIDI channel (1-16)

_ioutTable_ -- number of the table that will contain the output

_ioffset_ -- output table offset. A zero means that the output of the first slider will affect the first table element. A 10 means that the output of the first slider will affect the 11th table element.

_ictlnum1 ... ictlnum8_ -- MIDI control number (0-127)

_imin1 ... imin8_ -- minimum values for each controller

_imax1 ... imax8_ -- maximum values for each controller

_init1 ... init8_ -- initial value for each controller

_ifn1 ... ifn8_ -- function table for conversion for each controller

### Performance

_kflag_ -- a flag that informs if any control-change message in the bank has been received. In this case _kflag_ is set to 1. Otherwise is set to zero.

_slider8table_ handles a bank of MIDI controllers, useful when using MIDI mixer such as Kawai MM-16 or others for changing whatever sound parameter in real-time. The raw MIDI control messages at the input port are converted to agree with _iminN_ and _imaxN_,  and an initial value can be set. Also, an optional non-interpolated function table with a custom translation curve is allowed, useful for enabling exponential response curves.

When no function table translation is required, set the _ifnN_ value to 0, else set _ifnN_ to a valid function table number.  When table translation is enabled (i.e. setting _ifnN_ value to a non-zero number referring to an already allocated function table), _initN_ value should be set equal to _iminN_ or _imaxN_ value, else the initial output value will not be the same as specified in _initN_ argument.

_slider8table_ allows a bank of 8 different MIDI control message numbers.

As the input and output arguments are many, you can split the line using '\' (backslash) character (new in 3.47 version) to improve the readability. Using these opcodes is considerably more efficient than using the separate ones ([ctrl7](../../opcodes/ctrl7) and [tonek](../../opcodes/tonek)) when more controllers are required.

_slider8table_ is very similar to  [slider8](../../opcodes/slider8) and _sliderN_ family of opcodes (see their manual for more information). The actual difference is that the output is not stored to k-rate variables, but to a table, denoted by the _ioutTable_ argument. It is possible to define a starting index in order to use the same table for more than one slider bank (or other purposes).

It is possible to use this opcode together with [FLslidBnk2Setk](../../opcodes/flslidbnk2setk) and [FLslidBnk2](../../opcodes/flslidbnk2), so you can synchronize the position of the MIDI values to the position of the FLTK valuator widgets of [FLslidBnk2](../../opcodes/flslidbnk2). Notice that you have to specify the same min/max values as well the linear/exponential responses in both _sliderNtable(f)_ and [FLslidBnk2](../../opcodes/flslidbnk2). The exception is when using table-indexed response instead of a lin/exp response. In this case, in order to achieve a useful result, the table-indexed response and actual min/max values must be set only in [FLslidBnk2](../../opcodes/flslidbnk2), whereas, in _sliderNtable(f)_, you have to set a linear response and a minimum of zero and a maximum of one in all sliders.

## See Also

[Slider Banks](../../midi/sliderbk)

## Credits

Author: Gabriel Maldonado<br>

New in Csound version 5.06
