<!--
id:adsynt
category:Signal Generators:Additive Synthesis/Resynthesis
-->
# adsynt
Performs additive synthesis with an arbitrary number of partials, not necessarily harmonic.

## Syntax
```csound-orc
ares adsynt kamp, kcps, iwfn, ifreqfn, iampfn, icnt [, iphs]
```

### Initialization
_iwfn_ -- table containing a waveform, usually a sine. Table values are not interpolated for performance reasons, so larger tables provide better quality.
  
_ifreqfn_ -- table containing frequency values for each partial. _ifreqfn_ may contain beginning frequency values for each partial, but is usually used for generating parameters at runtime with _tablew_. Frequencies must be relative to _kcps_. Size must be at least _icnt_.
  
_iampfn_ -- table containing amplitude values for each partial. _iampfn_ may contain beginning amplitude values for each partial, but is usually used for generating parameters at runtime with _tablew_. Amplitudes must be relative to _kamp_. Size must be at least _icnt_.
  
_icnt_ -- number of partials to be generated
  
_iphs_ -- initial phase of each oscillator, if _iphs_ = -1, initialization is skipped. If _iphs_ > 1, all phases will be initialized with a random value.

### Performance
_kamp_ -- amplitude of note
  
_kcps_ -- base frequency of note. Partial frequencies will be relative to _kcps_.
  
Frequency and amplitude of each partial is given in the two tables provided. The purpose of this opcode is to have an instrument generate synthesis parameters at k-rate and write them to global parameter tables with the _tablew_ opcode.

## Examples
Here is an example of the adsynt opcode. It uses the file [adsynt.csd](../../examples/adsynt.csd). These two instruments perform additive synthesis. The output of each sounds like a Tibetan bowl. The first one is static, as parameters are only generated at init-time. In the second one, parameters are continuously changed.
``` csound-orc title="Example of the adsynt opcode." linenums="1"
--8<-- "examples/adsynt.csd"
```

## See also
[Additive Synthesis/Resynthesis](../../siggen/additive)

## Credits
Author: Peter Neubäcker  
Munich, Germany  
August, 1999

New in Csound version 3.58
