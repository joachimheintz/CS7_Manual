<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac   ;;;realtime audio out
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o resonx.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 32
nchnls = 2
0dbfs  = 1

instr 1 ; unfiltered noise

kenv    linseg  0, p3*.5, 1, p3*.5, 0   ;envelope
asig    rand    0.7                     ;white noise
        outs    asig*kenv, asig*kenv

endin

instr 2 ; filtered noise

kenv    linseg  0, p3*.5, 1, p3*.5, 0   ;envelope
asig    rand    0.7
kcf     line    300, p3, 2000
afilt   resonx  asig, kcf, 300, 4
asig    balance afilt, asig
        outs    asig*kenv, asig*kenv

endin
</CsInstruments>
<CsScore>

i 1 0 2
i 2 3 2

e
</CsScore>
</CsoundSynthesizer>