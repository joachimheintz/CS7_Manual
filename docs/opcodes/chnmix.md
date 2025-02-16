<!--
id:chnmix
category:Signal I/O:Software Bus
-->
# chnmix
Writes audio data to the named software bus, mixing to the previous output.

Implies declaring the channel with _imode_=2 (see also [chn_a](../../opcodes/chn)).

## Syntax
``` csound-orc
chnmix aval, Sname
```

### Initialization

_Sname_ -- a string that indicates which named channel of the software bus to write.

### Performance

_aval_ -- the audio signal to write at performance time.

## Examples

Here is an example of the chnmix opcode. It uses the file [chnmix.csd](../../examples/chnmix.csd).

``` csound-csd title="Example of the chnmix opcode." linenums="1"
--8<-- "examples/chnmix.csd"
```

## See also

[Software Bus](../../sigio/softbus)

## Credits

Author: Istvan Varga<br>
2006<br>
