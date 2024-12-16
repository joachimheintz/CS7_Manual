# The `csound` command

When Csound is installed, the command `csound` serves as a basic frontend which can be invoked from a Terminal or DOS window. The syntax is

`csound [options] [.csd file]`

or 

`csound [options] [.orc file] [.sco file]`

Rather than *options* the term *flags* is used frequently.

This command will execute the file "test.csd" (located in the current directory) and write the audio output to the digital-to-analog converter in real time:

`csound -o dac test.csd`

This command will execute the file "bla.csd" in the parent directory and render the output to the 32-bit floating-point sound file "bla.wav":

`csound -o bla.wav -f ../bla.csd`