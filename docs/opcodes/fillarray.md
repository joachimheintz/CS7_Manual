<!--
id:fillarray
category:Table Control:Table Queries
-->
# fillarray
Generate a vector (one-dimensional k-rate array) with a sequence of numeric or string values.

## Syntax
``` csound-orc
karray[] fillarray ival1, ival2,.....ivaln
karray fillarray ival1, ival2,.....ivaln
karray fillarray kval1, kval2,.....kvaln
```

### Initialization

_ival1,...ivaln_ -- values to place in the vector.

In the second form the answer array must be pre-declared, and it may be a multidimensional array which if filled in row-major order.

### Performance

In the third form the vector is regenerated at k-rate with values _kval1,..., kvaln_.

## Examples

Here is an example of the fillarray opcode. It uses the file [fillarray.csd](../../examples/fillarray.csd).

``` csound-csd title="Example of the fillarray opcode." linenums="1"
--8<-- "examples/fillarray.csd"
```

## See also

[Array opcodes](../../math/array)

## Credits

Author: John ffitch<br>
Codemist Ltd<br>
2013<br>

New in version 6.00

Third, k-rate, form new in 6.12
