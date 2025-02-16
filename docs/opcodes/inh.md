<!--
id:inh
category:Signal I/O:Signal Input
-->
# inh
Reads six-channel audio data from an external device or stream.

> :warning: **Warning**
>
> This opcode is designed to be used only with orchestras that have nchnls_i=6. Doing so with orchestras with nchnls_i &gt; 6 will cause incorrect audio input.

## Syntax
``` csound-orc
ar1, ar2, ar3, ar4, ar5, ar6 inh
```

### Performance

Reads six-channel audio data from an external device or stream. If the command-line [-i](../../) flag is set, sound is read continuously from the audio input stream (e.g. _stdin_ or a soundfile) into an internal buffer. Any number of these opcodes can read freely from this buffer.

## See also

[Signal Input](../../sigio/input)

## Credits

Author: John ffitch
