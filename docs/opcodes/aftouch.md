<!--
id:aftouch
category:Real-time MIDI:Input
-->
# aftouch
Get the current after-touch value for this channel.

## Syntax
``` csound-orc
kaft aftouch [imin] [, imax]
```

### Initialization

_imin_ (optional, default=0) -- minimum limit on values obtained.

_imax_ (optional, default=127) -- maximum limit on values obtained.

## Examples

Here is an example of the aftouch opcode. It uses the file [aftouch.csd](../../examples/aftouch.csd).

``` csound-csd title="Example of the aftouch opcode." linenums="1"
--8<-- "examples/aftouch.csd"
```

## See also

[MIDI input and Initialization](../../midi/input)

## Credits

Author: Barry L. Vercoe - Mike Berry<br>
MIT - Mills<br>
May 1997<br>
