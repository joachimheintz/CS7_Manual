<!--
id:outipat
category:Real-time MIDI:Output
-->
# outipat
Sends polyphonic MIDI aftertouch messages at i-rate.

## Syntax
``` csound-orc
outipat ichn, inotenum, ivalue, imin, imax
```

### Initialization

_ichn_ -- MIDI channel number (1-16)

_inotenum_ -- MIDI note number (used in polyphonic aftertouch messages)

_ivalue_ -- floating point value

_imin_ -- minimum floating point value (converted in MIDI integer value 0)

_imax_ -- maximum floating point value (converted in MIDI integer value 127 (7 bit))

### Performance

_outipat_ (i-rate polyphonic aftertouch output) sends polyphonic aftertouch messages. It works only with MIDI instruments which recognize them. It can drive a different value of a parameter for each note currently active.

It can scale an i-value floating-point argument according to the _imin_ and _imax_ values. For example, set _imin_ = 1.0 and _imax_ = 2.0. When the _ivalue_ argument receives a 2.0 value, the opcode will send a 127 value to the MIDI OUT device. When the _ivalue_ argument receives a 1.0 value, it will send a 0 value. i-rate opcodes send their message once during instrument initialization.

## See also

[MIDI Message Output](../../midi/output)

## Credits

Author: Gabriel Maldonado<br>
Italy<br>

New in Csound version 3.47

Thanks goes to Rasmus Ekman for pointing out the correct MIDI channel and controller number ranges.
