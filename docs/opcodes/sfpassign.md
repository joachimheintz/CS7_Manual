<!--
id:sfpassign
category:Signal Generators:Sample Playback
-->
# sfpassign
Assigns all presets of a SoundFont2 (SF2) sample file to a sequence of progressive index numbers.

These opcodes allow management the sample-structure of SF2 files. In order to understand the usage of these opcodes, the user must have some knowledge of the SF2 format, so a brief description of this format can be found in the [SoundFont2 File Format](../../siggen/sample) section.

_sfpassign_ should be placed in the header section of a Csound orchestra.

## Syntax
``` csound-orc
sfpassign istartindex, ifilhandle[, imsgs]
```

### Initialization

_istartindex_ -- starting index preset by the user in bulk preset assignments.

_ifilhandle_ -- unique number generated by _sfload_ opcode to be used as an identifier for a SF2 file. Several SF2 files can be loaded and activated at the same time.

_imsgs_ -- if non-zero messages are suppressed.

### Performance

_sfpassign_ assigns all presets of a previously loaded SF2 file to a sequence of progressive index numbers, to be used later with the opcodes [sfplay](../../opcodes/sfplay) and [sfplaym](../../opcodes/sfplaym). _istartindex_ specifies the starting index number. Any number of _sfpassign_ instances can be placed in the header section of an orchestra, each one assigning presets belonging to different SF2 files.

These opcodes only support the sample structure of SF2 files. The modulator structure of the SoundFont2 format is not supported in Csound. Any modulation or processing to the sample data is left to the Csound user, bypassing all restrictions forced by the SF2 standard.

## Examples

Here is an example of the sfpassign opcode. It uses the file [sfpassign.csd](../../examples/sfpassign.csd).

``` csound-csd title="Example of the sfpassign opcode." linenums="1"
--8<-- "examples/sfpassign.csd"
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
