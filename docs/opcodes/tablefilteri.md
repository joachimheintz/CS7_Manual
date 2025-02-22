<!--
id:tablefilteri
category:Table Control:Read/Write Operations
-->
# tablefilteri
Filters a source table and writes result into a destination table.

This opcode can be used in order to filter values from function tables following certain algorithms. The filtered output is written into a destination table and the number of elements that have passed the filter is returned.

## Syntax
``` csound-orc
inumpassed tablefilteri iouttable, iintatble, imode, iparam
```

### Initialization

_inumpassed_ -- the number of elements that
have passed the filter.

_iouttable_ -- the number of the table containing the values that have passed.

_iintatble_ -- the number of the table used as filter input.

_imode_ -- mode of the filter:

*  1 -- tests the weight of the denominators of the fractions in the source table.  Letting pass only values from the source that are less heavy than the weight of the threshold.
*  2 -- tests the weight of the denominators of the fractions in the source table.  Letting pass only values from the source that are heavier than or equal to the weight of the threshold.

_iparam_ -- integer threshold parameter for the filter. It means that denominators whose weights are heavier than the weight of this threshold are not passed through the filter. The weight of an integer is calculated using Clarence Barlow's function of indigestibility of a number. According to this function, higher prime numbers contribute to an increased weight of any natural integer they divide.  The order of the first 16 integers according to their indigestibility is: 1, 2, 4, 3, 8, 6, 16, 12, 9, 5, 10, 15, 7, 14.

## Examples

Here is an example of the tablefilteri opcode. It uses the file [tablefilter.csd](../../examples/tablefilter.csd).

``` csound-csd title="Example of the tablefilteri opcode." linenums="1"
--8<-- "examples/tablefilter.csd"
```

## See also

[Read/Write Operations](../../table/readwrit)

## Credits

Author: Georg Boenn <br>
University of Glamorgan, UK<br>

New in Csound version 5.13
