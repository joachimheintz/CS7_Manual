<!--
id:ceil
category:Mathematical Operations:Mathematical Functions
-->
# ceil
Returns the smallest integer not less than _x_

## Syntax
``` csound-orc
ceil(x) (init-, control-, or audio-rate arg allowed)
ceil(k/i[]) (k- or i-arrays )
```

where the argument within the parentheses may be an expression. Value converters perform arithmetic translation from units of one kind to units of another. The result can then be a term in a further expression.

## Examples

Here is an example of the ceil opcode. It uses the file [ceil.csd](../../examples/ceil.csd).

``` csound-csd title="Example of the ceil opcode." linenums="1"
--8<-- "examples/ceil.csd"
```

Its output should include lines like:

```
instr 1:  iceil = -1.000
instr 1:  iceil = 1.000
instr 1:  iceil = 1.000
instr 1:  iceil = 1.000
instr 1:  iceil = 0.000
instr 1:  iceil = 0.000
instr 1:  iceil = 0.000
```

Here is another example of the ceil opcode. It uses the file [ceil-2.csd](../../examples/ceil-2.csd).

``` csound-csd title="A second example of the ceil opcode." linenums="1"
--8<-- "examples/ceil-2.csd"
```

Here is an example for the rounding-group, comparing the different rounding opcodes. It uses the file [rounding-group.csd](../../examples/rounding-group.csd).

``` csound-csd title="Example of the rounding group." linenums="1"
--8<-- "examples/rounding-group.csd"
```

## See also

[Mathematical Functions](../../math/mathfunc)

## Credits

Author: Istvan Varga<br>
New in Csound 5<br>
2005<br>
