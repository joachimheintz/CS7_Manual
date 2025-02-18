<!--
id:vbapgmove
category:Signal Modifiers:Panning and Spatialization
-->
# vbapgmove
Calculates the gains for a sound location between multiple channels with moving virtual sources.

## Syntax
``` csound-orc
kr1[, kr2...] vbapgmove idur, ispread, ifldnum, ifld1 [, ifld2] [...]
karray[] vbapgmove idur, ispread, ifldnum, ifld1 [, ifld2] [...]
```

### Initialization

_idur_ -- the duration over which the movement takes place.

_ispread_ -- spreading of the virtual source (range 0 - 100).  If value is zero, conventional amplitude panning is used. When _ispread_ is increased, the number of loudspeakers used in panning increases. If value is 100, the sound is applied to all loudspeakers.

_ifldnum_ -- number of fields (absolute value must be 2 or larger). If _ifldnum_ is positive, the virtual source movement is a polyline specified by given directions. Each transition is performed in an equal time interval. If _ifldnum_ is negative, specified angular velocities are applied to the virtual source during specified relative time intervals (see below).

_ifld1, ifld2, ..._ -- azimuth angles or angular velocities, and relative durations of movement phases (see below).

### Performance

_vbapgmove_ allows the use of moving virtual sources. If _ifldnum_ is positive, the fields represent directions of virtual sources and equal times, _iazi1_, [_iele1_,] _iazi2_, [_iele2_,], etc.  The position of the virtual source is interpolated between directions starting from the first direction and ending at the last. Each interval is interpolated in time that is fraction total_time / number_of_intervals of the duration of the sound event.

If _ifldnum_ is negative, the fields represent angular velocities and equal times. The first field is, however, the starting direction, _iazi1_, [_iele1_,] _iazi_vel1_, [_iele_vel1_,] _iazi_vel2_, [_iele_vel2_,] .... Each velocity is applied to the note that is fraction total_time / number_of_velocities of the duration of the sound event.  If the elevation of the virtual source becomes greater than 90 degrees or less than 0 degrees, the polarity of angular velocity is changed. Thus the elevational angular velocity produces a virtual source that moves up and down between 0 and 90 degrees.

> :warning: **Warning**
>
> Please note that all _vbap_ panning opcodes require the _vbap_ system to be initialized using [vbaplsinit](../../opcodes/vbaplsinit).

### Reference

Ville Pulkki: &#8220;Virtual Sound Source Positioning Using Vector Base Amplitude Panning&#8221; _Journal of the Audio Engineering Society_, 1997 June, Vol. 45/6, p. 456.

## Examples

Here is an example of the vbapgmove opcode. It uses the file
[vbapgmove.csd](../../examples/vbapgmove.csd).

``` csound-csd title="Example of the vbapg opcode." linenums="1"
--8<-- "examples/vbapgmove.csd"
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

New in Csound Version 5.17.13

Array outputs new in Csound Version 6.01
