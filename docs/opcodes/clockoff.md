<!--
id:clockoff
category:Instrument Control:Clock Control
-->
# clockoff
Stops one of a number of internal clocks.

## Syntax
``` csound-orc
clockoff inum
```

### Initialization

_inum_ -- the number of a clock.  There are 32 clocks numbered 0 through 31. All other values are mapped to clock number 32.

### Performance

Between a [clockon](../../opcodes/clockon) and a _clockoff_ opcode, the CPU time used is accumulated in the clock.  The precision is machine dependent but is the millisecond range on UNIX and Windows systems. The [readclock](../../opcodes/readclock) opcode reads the current value of a clock at initialization time.

## Examples

Here is an example of the clockoff opcode. It uses the file [clockoff.csd](../../examples/clockoff.csd).

``` csound-csd title="Example of the clockoff opcode." linenums="1"
--8<-- "examples/clockoff.csd"
```

## See also

[Clock Control](../../control/clockctl)

## Credits

Author: John ffitch<br>
University of Bath/Codemist Ltd.<br>
Bath, UK<br>
July, 1999<br>

New in Csound version 3.56
