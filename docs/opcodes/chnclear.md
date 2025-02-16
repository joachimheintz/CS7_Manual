<!--
id:chnclear
category:Signal I/O:Software Bus
-->
# chnclear
Clears a number of audio output channel of the named software bus.

Implies declaring the channel with _imode_=2 (see also [chn_a](../../opcodes/chn)).

## Syntax
``` csound-orc
chnclear Sname1[, Sname2,...]
```

### Initialization

_Sname*_ -- a string that indicates which named channel of the software bus to clear.

## Examples

Here is an example of the chnclear opcode. It uses the file [chnclear.csd](../../examples/chnclear.csd).

``` csound-csd title="Example of the chnclear opcode." linenums="1"
--8<-- "examples/chnclear.csd"
```

## See also

[Software Bus](../../sigio/softbus)

## Credits

Author: Istvan Varga<br>
2006<br>
