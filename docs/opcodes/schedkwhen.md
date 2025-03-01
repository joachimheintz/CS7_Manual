<!--
id:schedkwhen
category:Instrument Control:Invocation
-->
# schedkwhen
Adds a new score event generated by a k-rate trigger.

## Syntax
``` csound-orc
schedkwhen ktrigger, kmintim, kmaxnum, kinsnum, kwhen, kdur 
           [, ip4] [, ip5] [...]
schedkwhen ktrigger, kmintim, kmaxnum, "insname", kwhen, kdur \
           [, ip4] [, ip5] [...]
```

### Initialization

_&#8220;insname&#8221;_ -- A string (in double-quotes) representing a named instrument.

_ip4, ip5, ..._ -- Equivalent to p4, p5, etc., in a score [i statement](../../scoregens/i)

### Performance

_ktrigger_ -- triggers a new score event. If _ktrigger_ = 0, no new event is triggered.

_kmintim_ -- minimum time between generated events, in seconds. If _kmintim_ &lt;= 0, no time limit exists. If the _kinsnum_ is negative (to turn off an instrument), this test is bypassed.

_kmaxnum_ -- maximum number of simultaneous instances of instrument _kinsnum_ allowed. If the number of existant instances of _kinsnum_ is &gt;= _kmaxnum_, no new event is generated. If _kmaxnum_ is &lt;= 0, it is not used to limit event generation. If the _kinsnum_ is negative (to turn off an instrument), this test is bypassed.

_kinsnum_ -- instrument number. Equivalent to p1 in a score [i statement](../../scoregens/i).

_kwhen_ -- start time of the new event. Equivalent to p2 in a score [i statement](../../scoregens/i). Measured from the time of the triggering event. _kwhen_ must be &gt;= 0. If _kwhen_ &gt; 0, the instrument will not be initialized until the actual time when it should start performing.

_kdur_ -- duration of event. Equivalent to p3 in a score [i statement](../../scoregens/i). If _kdur_ = 0, the instrument will only do an initialization pass, with no performance. If _kdur_ is negative, a held note is initiated. (See [ihold](../../opcodes/ihold) and [i statement](../../scoregens/i).)

> :memo: **Note**
>
> While waiting for events to be triggered by _schedkwhen_, the performance must be kept going, or Csound may quit if no score events are expected. To guarantee continued performance, an [f0 statement](../../scoregens/f) may be used in the score.

> :memo: **Note**
>
> Note that the _schedkwhen_ opcode cannot accept string p-fields. If you need to pass strings when instantiating an instrument, use the [scoreline](../../opcodes/scoreline) or [scoreline_i](../../opcodes/scoreline_i) opcode.

## Examples

Here is an example of the schedkwhen opcode. It uses the file [schedkwhen.csd](../../examples/schedkwhen.csd).

``` csound-csd title="Example of the schedkwhen opcode." linenums="1"
--8<-- "examples/schedkwhen.csd"
```

A musical example featuring the schedkwhen opcode: [schedkwhen_Daughtrey.csd](../../examples/musical/schedkwhen_Daughtrey.csd) by Scott Daughtrey.

## See also

[Instrument Invocation](../../control/invocat)

## Credits

Author: Rasmus Ekman<br>
EMS, Stockholm, Sweden<br>

Example written by Kevin Conder.

New in Csound version 3.59
