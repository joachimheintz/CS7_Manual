<!--
id:vbap
category:Signal Modifiers:Panning and Spatialization
-->
# vbap
Distributes an audio signal among many channels, up to 64 in the first form, arbitrary in the second.

## Syntax
``` csound-orc
ar1[, ar2...] vbap asig, kazim [,kelev] [, kspread] [, ilayout]
array[] vbap asig, kazim [,kelev] [, kspread] [, ilayout]
```

### Initialization

_ilayout_ -- index of the speaker layout in the range 0-99, corresponding to a call to _vbaplsinit_.

### Performance

_asig_ -- audio signal to be panned

_kazim_ -- azimuth angle of the virtual source

_kelev_ (optional) -- elevation angle of the virtual source

_kspread_ (optional) -- spreading of the virtual source (range 0 - 100).  If value is zero, conventional amplitude panning is used. When _kspread_ is increased, the number of loudspeakers used in panning increases. If value is 100, the sound is applied to all loudspeakers.

_vbap_ takes an input signal, _asig_ and distributes it among the outputs, according to the controls _kazim_ and _kelev_, and the configured loudspeaker placement.  If _idim_ = 2, _kelev_ is set to zero. The distribution is performed using Vector Base Amplitude Panning (VBAP - See reference).  VBAP distributes the signal using loudspeaker data configured with _vbaplsinit_. The signal is applied to, at most, two loudspeakers in 2-D loudspeaker configurations, and three loudspeakers in 3-D loudspeaker configurations. If the virtual source is panned outside the region spanned by loudspeakers, the nearest loudspeakers are used in panning.

> :warning: **Warning**
>
> Please note that all _vbap_ panning opcodes require the _vbap_ system to be initialized using [vbaplsinit](../../opcodes/vbaplsinit).

### Reference

Ville Pulkki: &#8220;Virtual Sound Source Positioning Using Vector Base Amplitude Panning&#8221; _Journal of the Audio Engineering Society_, 1997 June, Vol. 45/6, p. 456.

## Examples

See the entry for [vbap8](../../opcodes/vbap8) for an example of usage of the _vbap_ opcodes.

Here is an example of the vbap opcode. It uses the file [vbap.csd](../../examples/vbap.csd).

``` csound-csd title="Example of the vbap opcode." linenums="1"
--8<-- "examples/vbap.csd"
```

Its output should include lines like these:

```
spread of source = 0
spread of source = 8
spread of source = 17
spread of source = 25
spread of source = 33
spread of source = 42
spread of source = 50
spread of source = 58
spread of source = 67
spread of source = 75
spread of source = 83
spread of source = 92
spread of source = 100
```

## See also

[Panning and Spatialization: Vector Base Amplitude Panning](../../sigmod/panspatl)

## Credits

Author: Ville Pulkki<br>
Sibelius Academy Computer Music Studio<br>
Laboratory of Acoustics and Audio Signal Processing<br>
Helsinki University of Technology<br>
Helsinki, Finland<br>
May 2000<br>
Author: John ffitch<br>
July 2012, Sept 2013<br>

New in Csound Version 5.17.13.

Array version new in Csound Version 6.01.
