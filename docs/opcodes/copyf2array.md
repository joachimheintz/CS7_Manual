<!--
id:copyf2array
category:Array Opcodes
-->
# copyf2array
The _copyf2array_ opcode takes an f-table and copies the contents to a t-var.

## Syntax
``` csound-orc
copyf2array tab, kftbl
```

### Performance

_tab_ --  tables for destination.

_kftbl_ --  f-tables for source.

## Example

Here is an example of the copyf2array opcode. It uses the file [copyf2array.csd](../../examples/copyf2array.csd).

``` csound-csd title="Example of the copyf2array opcode." linenums="1"
--8<-- "examples/copyf2array.csd"
```

## See also

[Array opcodes](../../math/array)

## Credits

Author: John ffitch<br>
October 2011<br>

New in Csound version 5.15

Renamed in Csound version 6.00
