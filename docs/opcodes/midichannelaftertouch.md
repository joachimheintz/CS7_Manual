<!--
id:midichannelaftertouch
category:Real-time MIDI:MIDI/Score Interoperability
-->
# midichannelaftertouch
Gets a MIDI channel's aftertouch value.

_midichannelaftertouch_ is designed to simplify writing instruments that can be used interchangeably for either score or MIDI input, and to make it easier to adapt instruments originally written for score input to work with MIDI input.

In general, it should be possible to write instrument definitions that work identically with both scores and MIDI, including both MIDI files and real-time MIDI input, without using any conditional statements, and that take full advantage of MIDI voice messages.

Note that correlating Csound instruments with MIDI channel numbers is done using the [massign](../../opcodes/massign) opcode for real-time performance,.  For file-driven performance, instrument numbers default to MIDI channel number + 1, but the defaults are overridden by any MIDI program change messages in the file.

## Syntax
``` csound-orc
midichannelaftertouch xchannelaftertouch [, ilow] [, ihigh]
```

### Initialization

_ilow_ (optional) -- optional low value after rescaling, defaults to 0.

_ihigh_ (optional) -- optional high value after rescaling, defaults to 127.

### Performance

_xchannelaftertouch_ -- returns the MIDI channel aftertouch during MIDI activation, remains unchanged otherwise.

If the instrument was activated by MIDI input, the opcode overwrites the value of _xchannelaftertouch_ with the corresponding value from MIDI input. If the instrument was _NOT_ activated by MIDI input, the value of _xchannelaftertouch_ remains unchanged.

This enables score p-fields to receive MIDI input data during MIDI activation, and score values otherwise.

> :memo: **Adapting a score-activated Csound instrument.**
>
> See the [MIDI interop opcodes](../../midi/interop) section for details on adapting score driven instruments for MIDI or vice-versa.

## Examples

Here is an example of the midichannelaftertouch opcode. It uses the file [midichannelaftertouch.csd](../../examples/midichannelaftertouch.csd).

``` csound-csd title="Example of the midichannelaftertouch opcode." linenums="1"
--8<-- "examples/midichannelaftertouch.csd"
```

Its output should include lines like:

```
i1   127.00000
i1    20.00000
i1    44.00000
```

## See also

[MIDI/Score Interoperability](../../midi/interop)

## Credits

Author: Michael Gogins

New in version 4.20
