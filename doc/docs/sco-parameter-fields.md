# Parameter Fields

The standard numeric score consists of lines where each line represents a single statements. Each statement begins with a character denoting the type of statement, followed by a number of parameters which specify this statement. Parameters are separated by spaces or tabs. The parameter fields (p-fields) are numbered and abbreviated as *p1, p2, p3, ...*

| Char | p1 | p2 | p3 | p4 | p5 | p6 | Type of statement |
| ---- | -- | -- | -- | -- | -- | -- | -- |
| **i**| 1  | 0  | 3  | -  | -  | -  | instrument call |
| **f**| 1  | 0  | 1025  | 10  | 1 | -  | function table creation |
| **a**| 0  | 0  | 80  | -  | - | -  | advances score time |
| **e**| 60  | -  | -  | -  | - | -  | ends score execution |

The p-fields have different meanings in the different statements. In the example above, p1 means the instrument number for the **i**-statement, the function table number for the **f**-statement, is without any meaning for the **a**-statement, and signifies the time for the **e**-statement.

## P-Fields in Instrument Events

Instrument events starting with the character **i** are by far the most important score statements. In fact, the score is a collection of instrument calls plus some extra statements to ease the control and overview for large scores.

For each instrument event, the first three parameters are mandatory and carry a fixed meaning:

- *p1* is the instrument number or name  
- *p2* is the time to start the instrument instance  
- *p3* is the duration of the instrument instance to run

The meaning of the optional parameters *p4, p5, ...* is given by the instrument definition. All score parameters are accessible in the instrument definition as `p1`, `p2` etc.

```
<CsoundSynthesizer> 
<CsOptions> 
-odac
</CsOptions> 
<CsInstruments> 
instr 1
  print(p1,p2,p3)
  amp:i = p4*0dbfs
  freq:i = p5
  aSig = poscil:a(amp,freq)
  outall(aSig)
endin
</CsInstruments> 
<CsScore>
i 1 0 3 0.2 400
</CsScore> 
</CsoundSynthesizer> 
```