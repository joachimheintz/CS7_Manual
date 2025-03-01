<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac    -M1 -Q1  ;;;realtime audio out and midi in and midi out
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o midiprogramchange.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 32
nchnls = 2
0dbfs  = 1

instr 1 ;uses external midi device

kkey init 0                                     ;initialize key number
kvel init 0                                     ;initialize velocity
midiprogramchange 52                            ;choose GM program number 52 = string pad
midinoteonkey kkey, kvel                        ;MIDI note number value
printk2 kkey                                    ;display the key value when it changes and when key is pressed 
midion 1, kkey, kvel                            ;sent note to external device

endin
</CsInstruments>
<CsScore>
f 0 30  ;runs for 30 seconds    

i 1 0 2 62      ; play these notes from score as well
i 1 + 2 65
e
</CsScore>
</CsoundSynthesizer>