<!--
id:noteondur
category:Real-time MIDI:Note Output
-->
# noteondur
Sends a noteon and a noteoff MIDI message both with the same channel, number and velocity.

## Syntax
``` csound-orc
noteondur ichn, inum, ivel, idur
```

### Initialization

_ichn_ -- MIDI channel number (1-16)

_inum_ -- note number (0-127)

_ivel_ -- velocity (0-127)

_idur_ -- how long, in seconds, this note should last.

### Performance

_noteondur_ (i-rate note on with duration) sends a noteon and a noteoff MIDI message both with the same channel, number and velocity. Noteoff message is sent after _idur_ seconds are elapsed by the time _noteondur_ was active.

_noteondur_ differs from _noteondur2_ in that _noteondur_ truncates note duration when current instrument is deactivated by score or by real-time playing, while _noteondur2_ will extend performance time of current instrument until _idur_ seconds have elapsed. In real-time playing, it is suggested to use _noteondur_ also for undefined durations, giving a large _idur_ value.

Any number of _noteondur_ opcodes can appear in the same Csound instrument, allowing chords to be played by a single instrument.

## Examples

Here is an example of the noteondur opcode. It uses the file [noteondur.csd](../../examples/noteondur.csd).

This example generates notes for every note received on the MIDI input. It generates MIDI notes on csound's MIDI output, so be sure to connect something.

``` csound-csd title="Example of the noteondur opcode." linenums="1"
--8<-- "examples/noteondur.csd"
```

## See also

[Note-on/Note-off Output](../../midi/onoff)

## Credits

Author: Gabriel Maldonado<br>
Italy<br>

New in Csound version 3.47

Thanks goes to Rasmus Ekman for pointing out the correct MIDI channel and controller number ranges.
