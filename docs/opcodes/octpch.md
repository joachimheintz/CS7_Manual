<!--
id:octpch
category:Pitch Converters:Functions
-->
# octpch
Converts a pitch-class value to octave-point-decimal.

## Syntax
``` csound-orc
octpch (pch)  (init- or control-rate args only)
```

where the argument within the parentheses may be a further expression.

### Performance

_octpch_ and its related opcodes are really _value converters_ with a special function of manipulating pitch data.

Data concerning pitch and frequency can exist in any of the following forms:

| Name | Abbreviation |
|---|---|
| octave point pitch-class (8ve.pc) | pch |
| octave point decimal | oct |
| cycles per second | cps |
| Midi note number (0-127) | midinn |

The first two forms consist of a whole number, representing octave registration, followed by a specially interpreted fractional part. For _pch_, the fraction is read as two decimal digits representing the 12 equal-tempered pitch classes from .00 for C to .11 for B. For _oct_, the fraction is interpreted as a true decimal fractional part of an octave. The two fractional forms are thus related by the factor 100/12. In both forms, the fraction is preceded by a whole number octave index such that 8.00 represents Middle C, 9.00 the C above, etc. Midi note number values range between 0 and 127 (inclusively) with 60 representing Middle C, and are usually whole numbers. Thus A440 can be represented alternatively by 440 (_cps_), 69 (_midinn_), 8.09 (_pch_), or 8.75 (_oct_). Microtonal divisions of the _pch_ semitone can be encoded by using more than two decimal places.

The mnemonics of the pitch conversion units are derived from morphemes of the forms involved, the second morpheme describing the source and the first morpheme the object (result). Thus _cpspch_(8.09) will convert the pitch argument 8.09 to its _cps_ (or Hertz) equivalent, giving the value of 440. Since the argument is constant over the duration of the note, this conversion will take place at i-time, before any samples for the current note are produced.

By contrast, the conversion _cpsoct_(8.75 + k1) which gives the value of A440 transposed by the octave interval _k1_. The calculation will be repeated every k-period since that is the rate at which _k1_ varies.

> :memo: **Note**
>
> The conversion from _pch_, _oct_, or _midinn_ into _cps_ is not a linear operation but involves an exponential process that could be time-consuming when executed repeatedly. Csound now uses a built-in table lookup to do this efficiently, even at audio rates. Because the table index is truncated without interpolation, pitch resolution when using one of these opcodes is limited to 8192 discrete and equal divisions of the octave, and some pitches of the standard 12-tone equally-tempered scale are very slightly mistuned (by at most 0.15 cents).

## Examples

Here is an example of the octpch opcode. It uses the file [octpch.csd](../../examples/octpch.csd).

``` csound-csd title="Example of the octpch opcode." linenums="1"
--8<-- "examples/octpch.csd"
```

Its output should include a line like this:

```
instr 1:  ioct = 8.750
```

## See also

[Pitch Converters: Functions](../../pitch/funcs)

## Credits

Example written by Kevin Conder.
