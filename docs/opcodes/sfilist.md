<!--
id:sfilist
category:Signal Generators:Sample Playback
-->
# sfilist
Prints a list of all instruments of a previously loaded SoundFont2 (SF2) sample file.

These opcodes allow management the sample-structure of SF2 files. In order to understand the usage of these opcodes, the user must have some knowledge of the SF2 format, so a brief description of this format can be found in the [SoundFont2 File Format](../../siggen/sample) section.

## Syntax
``` csound-orc
sfilist ifilhandle [, Sprintprefix]
```

### Initialization

_ifilhandle_ -- unique number generated by [sfload](../../opcodes/sfload) opcode to be used as an identifier for a SF2 file. Several SF2 files can be loaded and activated at the same time.

_Sprintprefix_ -- A string prefix to prepend to each instrument row printed

### Performance

_sfilist_ prints a list of all instruments of a previously loaded SF2 file to the console.

These opcodes only support the sample structure of SF2 files. The modulator structure of the SoundFont2 format is not supported in Csound. Any modulation or processing to the sample data is left to the Csound user, bypassing all restrictions forced by the SF2 standard.

## Examples

Here is an example of the sfilist opcode. It uses the file [sfilist.csd](../../examples/sfilist.csd).

``` csound-csd title="Example of the sfilist opcode." linenums="1"
--8<-- "examples/sfilist.csd"
```

Its output should include lines like this:

```
Instrument list of "sf_GMbank.sf2"
0) Piano 1
1) Piano 2
2) CP 70
3) EP 1 layer 1
4) EP 1 layer 2
5) E.Piano 2
6) Harpsichord
.......
100) Halo Pad
.......
```

## See also

[Soundfonts](../../siggen/sample)

More information on soundfonts is in the Floss Manuals: [https://flossmanual.csound.com/midi/reading-midi-files](https://flossmanual.csound.com/midi/reading-midi-files)

For other information on soundfonts look in the Wikipedia: [http://en.wikipedia.org/wiki/Soundfont](http://en.wikipedia.org/wiki/Soundfont)

## Credits

Author: Gabriel Maldonado<br>
Italy<br>
May 2000<br>

New in Csound Version 4.07
