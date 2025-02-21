<!--
id:seqtime2
category:Instrument Control:Sensing and Control
-->
# seqtime2
Generates a trigger signal according to the values stored in a table.

## Syntax
``` csound-orc
ktrig_out seqtime2 ktrig_in, ktime_unit, kstart, kloop, kinitndx, kfn_times
```

### Performance

_ktrig_out_ -- output trigger signal

_ktime_unit_ -- unit of measure of time, related to seconds.

_ktrig_in_ -- input trigger signal.

_kstart_ -- start index of looped section

_kloop_ -- end index of looped section

_kinitndx_ -- initial index

> :memo: **Note**
>
> Although _kinitndx_ is listed as k-rate, it is in fact accessed only at init-time. So if you are using a k-rate argument, it must be assigned with [init](../../opcodes/init).

_kfn_times_ -- number of table containing a sequence of times

This opcode handles timed-sequences of groups of values stored into a table.

_seqtime2_ generates a trigger signal (a sequence of impulses, see also [trigger](../../opcodes/trigger) opcode), according to the values stored in the _kfn_times_ table. This table should contain a series of delta-times (i.e. times beetween to adjacent events). The time units stored into table are expressed in seconds, but can be rescaled by means of _ktime_unit_ argument. The table can be filled with [GEN02](../../scoregens/gen02) or by means of an external text-file containing numbers, with [GEN23](../../scoregens/gen23).

It is possible to start the sequence from a value different than the first, by assigning to _initndx_ an index different than zero (which corresponds to the first value of the table). Normally the sequence is looped, and the start and end of loop can be adjusted by modifying _kstart_ and _kloop_ arguments. User must be sure that values of these arguments (as well as _initndx_) correspond to valid table numbers, otherwise Csound will crash (because no range-checking is implementeted).

It is possible to disable loop (one-shot mode) by assigning the same value both to _kstart_ and _kloop_ arguments. In this case, the last read element will be the one corresponding to the value of such arguments.  Table can be read backward by assigning a negative _kloop_ value. It is possible to trigger two events almost at the same time (actually separated by a k-cycle) by giving a zero value to the corresponding delta-time.  First element contained in the table should be zero, if the user intends to send a trigger impulse, it should come immediately after the orchestra instrument containing _seqtime2_
opcode.

_seqtime2_ is similar to [seqtime](../../opcodes/seqtime), the difference is that when _ktrig_in_ contains a non-zero value, current index is reset to _kinitndx_ value.  _kinitndx_ can be varied at performance time.

## Examples

Here is an example of the seqtime2 opcode. It uses the file [seqtime2.csd](../../examples/seqtime2.csd).

``` csound-csd title="Example of the seqtime2 opcode." linenums="1"
--8<-- "examples/seqtime2.csd"
```

## See also

[Sensing and Control: Tempo and Sequencing](../../control/sensing)

## Credits

Author: Gabriel Maldonado
