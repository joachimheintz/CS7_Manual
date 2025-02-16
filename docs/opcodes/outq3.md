<!--
id:outq3
category:Signal I/O:Signal Output
-->
# outq3
Writes samples to quad channel 3 of an external device or stream.

## Syntax
``` csound-orc
outq3 asig
```

### Performance

Sends audio samples to an accumulating output buffer (created at the beginning of performance) which serves to collect the output of all active instruments before the sound is written to disk. There can be any number of these output units in an instrument.

The type (mono, stereo, quad, hex, or oct) should agree with [nchnls](../../opcodes/nchnls). But as of version 3.50, Csound will attempt to change an incorrect opcode to agree with the _nchnls_ statement. Opcodes can be chosen to direct sound to any particular channel: _outs1_ sends to stereo channel 1, _outq3_ to quad channel 3, etc.

## Examples

Here is an example of the outq3 opcode. It uses the file [outq3.csd](../../examples/outq3.csd).

``` csound-csd title="Example of the outq3 opcode." linenums="1"
--8<-- "examples/outq3.csd"
```

## See also

[Signal Output](../../sigio/output)

## Credits

Author: Barry L. Vercoe, Matt Ingalls/Mike Berry<br>
MIT, Mills College<br>
1993-1997<br>
