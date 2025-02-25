<!--
id:outkat
category:Real-time MIDI:Output
-->
# outkat
Sends MIDI aftertouch messages at k-rate.

## Syntax
``` csound-orc
outkat kchn, kvalue, kmin, kmax
```

### Performance

_kchn_ -- MIDI channel number (1-16)

_kvalue_ -- floating point value

_kmin_ -- minimum floating point value (converted in MIDI integer value 0)

_kmax_ -- maximum floating point value (converted in MIDI integer value 127)

_outkat_ (k-rate aftertouch output) sends aftertouch messages. It works only with MIDI instruments which recognize them. It can drive a different value of a parameter for each note currently active.

It can scale the k-value floating-point argument according to the _kmin_ and _kmax_ values. For example: set _kmin_ = 1.0 and _kmax_ = 2.0. When the _kvalue_ argument receives a 2.0 value, the opcode will send a 127 value to the MIDI OUT device. When the _kvalue_ argument receives a 1.0 value, it will send a 0 value. k-rate opcodes send a message each time the MIDI converted value of argument _kvalue_ changes.

## Examples

Here is an example of the outkat opcode. It uses the file [outkat.csd](../../examples/outkat.csd).

``` csound-csd title="Example of the outkat opcode." linenums="1"
--8<-- "examples/outkat.csd"
```

## See also

[MIDI Message Output](../../midi/output)

## Credits

Author: Gabriel Maldonado<br>
Italy<br>

New in Csound version 3.47

Thanks goes to Rasmus Ekman for pointing out the correct MIDI channel and controller number ranges.
