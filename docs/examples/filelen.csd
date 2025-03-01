<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac     ;;;realtime audio out
; For Non-realtime ouput leave only the line below:
;-o filelen.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

; by Menno Knevel 2022

sr = 44100
ksmps = 32
nchnls = 2
0dbfs  = 1

instr 1 ; choose between mono or stereo file

ilen   filelen p4             ; calculate length of soundfile
prints "\nlenght of sample = %2.3f seconds\n\n", ilen
ichn filenchnls  p4           ; check number of channels

if (ichn == 1) then           ; mono signal
     asig diskin2 p4, 1 
     outs    asig, asig
else
     aL, aR diskin2 p4, 1     ; stereo signal 
     outs    aL, aR
endif
endin

</CsInstruments>
<CsScore>

i 1 0 8 "Mathews.wav"   ; mono signal
i 1 8 4 "drumsSlp.wav"  ; stereo signal
e
</CsScore>
</CsoundSynthesizer>