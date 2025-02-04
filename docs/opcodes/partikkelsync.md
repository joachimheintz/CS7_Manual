<!--
id:partikkelsync
category:Signal Generators:Granular Synthesis
-->
# partikkelsync
Outputs _partikkel_'s grain  scheduler clock pulse and phase to synchronize several instances of the _partikkel_  opcode to the same clock source.

_partikkelsync_ is an opcode for outputting [partikkel](../../opcodes/partikkel)'s grain scheduler clock pulse and phase. _partikkelsync_'s output can be used to synchronize other instances of the [partikkel](../../opcodes/partikkel) opcode to the same clock.

## Syntax
```csound-orc
async [,aphase] partikkelsync iopcode_id
```

### Initialization
_iopcode_id_ -- the opcode id, linking an  instance of  [partikkel](../../opcodes/partikkel)  to an instance of _partikkelsync_.

### Performance
_async_ -- trigger pulse signal.   Outputs trigger pulses synchronized to a _partikkel_ opcode's grain scheduler clock.   One trigger pulse is generated for each grain started in the _partikkel_ opcode with the same _opcode_id_.  The normal usage would be to send this signal to another _partikkel_ opcode's _async_ input to   synchronize several instances of _partikkel_.
  
_aphase_ -- clock phase.   Outputs a linear ramping phase signal. Can be used e.g. for softsynchronization, or just as a phase generator ala _phasor_.

## Examples
Here is an example of the partikkelsync opcode. It uses the file [partikkelsync.csd](../../examples/partikkelsync.csd).
``` csound-orc title="Example of the partikkelsync opcode." linenums="1"
--8<-- "examples/partikkelsync.csd"
```

## See Also
[Granular Synthesis](../../siggen/granular)

## Credits
Author: Thom Johansen  
Author: Torgeir Strand Henriksen  
Author: Øyvind Brandtsegg  
April 2007

New in version 5.06
