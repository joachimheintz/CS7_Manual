<!--
id:tablewkt
category:Table Control:Read/Write Operations
-->
# tablewkt
Change the contents of existing function tables.

_tablewkt_ uses a k-rate variable for selecting the table number. The valid combinations of variable types are shown by the first letter of the variable names.

## Syntax
``` csound-orc
tablewkt asig, andx, kfn [, ixmode] [, ixoff] [, iwgmode]
tablewkt ksig, kndx, kfn [, ixmode] [, ixoff] [, iwgmode]
```

### Initialization

_asig_, _ksig_ -- The value to be written into the table.

_andx_, _kndx_ -- Index into table, either a positive number range matching the table length (_ixmode_ = 0) or a 0 to 1 range (_ixmode_ != 0)

_kfn_ -- Table number. Must be &gt;= 1. Floats are rounded down to an integer. If a table number does not point to a valid table, or the table has not yet been loaded ([GEN01](../../scoregens/gen01)) then an error will result and the instrument will be de-activated.

_ixmode_ -- index mode. Default is zero.

*   0 = _xndx_ and _ixoff_ ranges match the length of the table.
*   Not equal to 0 = _xndx_ and _ixoff_ have a 0 to 1 range.

_ixoff_ -- index offset. Default is 0.

*   0 = Total index is controlled directly by _xndx_, i.e. the indexing starts from the start of the table.
*   Not equal to 0 = Start indexing from somewhere else in the table. Value must be positive and less than the table length (_ixmode_ = 0) or less than 1 (_ixmode_ != 0).

_iwgmode_ -- table writing mode. Default is 0.

*   0 = Limit mode.
*   1 = Wrap mode.
*   2 = Guardpoint mode.

### Performance

#### Limit mode (0)

Limit the total index (_ndx_ + _ixoff_) to between 0 and the guard point. For a table of length 5, this means that locations 0 to 3 and location 4 (the guard point) can be written. A negative total index writes to location 0.

#### Wrap mode (1)

Wrap total index value into locations 0 to E, where E is one less than either the table length or the factor of 2 number which is one less than the table length. For example, wrap into a 0 to 3 range - so that total index 6 writes to location 2.

#### Guardpoint mode (2)

The guardpoint is written at the same time as location 0 is written - with the same value.

This facilitates writing to tables which are intended to be read with interpolation for producing smooth cyclic waveforms. In addition, before it is used, the total index is incremented by half the range between one location and the next, before being rounded down to the integer address of a table location.

Normally (_igwmode_ = 0 or 1) for a table of length 5 - which has locations 0 to 3 as the main table and location 4 as the guard point, a total index in the range of 0 to 0.999 will write to location 0. ("0.999" means just less than 1.0.) 1.0 to 1.999 will write to location 1 etc. A similar pattern holds for all total indexes 0 to 4.999 (_igwmode_ = 0) or to 3.999 (_igwmode_ = 1). _igwmode_ = 0 enables locations 0 to 4 to be written - with the guardpoint (4) being written with a potentially different value from location 0.

With a table of length 5 and the _iwgmode_ = 2, then when the total index is in the range 0 to 0.499, it will write to locations 0 and 4. Range 0.5 to 1.499 will write to location 1 etc. 3.5 to 4.0 will also write to locations 0 and 4.

This way, the writing operation most closely approximates the results of interpolated reading. Guard point mode should only be used with tables that have a guardpoint.

Guardpoint mode is accomplished by adding 0.5 to the total index, rounding to the next lowest integer, wrapping it modulo the factor of two which is one less than the table length, writing the table (locations 0 to 3 in our example) and then writing to the guard point if index = 0.

#### Caution with k-rate table numbers

At k-rate or a-rate, if a table number of &lt; 1 is given, or the table number points to a non-existent table, or to one which has a length of 0 (it is to be loaded from a file later) then an error will result and the instrument will be deactivated. _kfn_ and _afn_ must be initialized at the appropriate rate using _init_. Attempting to load an i-rate value into _kfn_ or _afn_ will result in an error.

## See also

[Read/Write Operations](../../table/readwrit)

## Credits

Author: Robin Whittle<br>
Australia<br>
May 1997<br>
