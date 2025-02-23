<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac     ;;;real-time audio out
;-iadc    ;;;uncomment -iadc if RT audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o exciter.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr=44100
ksmps=32
nchnls=2
0dbfs =1

; by Menno Knevel 2023

instr 1 ; excited sound + original sound

a1 diskin2 "Mathews.wav", 1, 3.5
a2 exciter a1, 3000, 20000, 10, 10      ;generate uneven harmonics at maximum setting
     outs a2+a1, a2+a1
endin

instr 2 ; original sound for comparison

a1 diskin2 "Mathews.wav", 1, 3.5
   outs a1, a1
endin

instr 3 ; the effect of the excited sound only

a1 diskin2 "Mathews.wav", 1, 3.5
a2 exciter a1, 3000, 20000, 10, 10      ;generate uneven harmonics at maximum setting
   outs a2, a2
endin

</CsInstruments>
<CsScore>
i1 0 5
i2 5 5
i3 10 4.5
e
</CsScore>
</CsoundSynthesizer> 