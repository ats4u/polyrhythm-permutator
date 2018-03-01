
Polyrhythm Permutator
=====================

In any music, there are bars. A bar has a specific number of pulses. For
example, four time swing has four beats and each beat has three tuplets; thus
it has twelve pulses. It is interesting that three time with four tuplets also
twelve pulses.

When a rhythm pattern has a same number of pulses with another rhythm pattern,
they are interchangeable without changing their length of measure.

https://youtu.be/62p-CXrYmf4

"Footprints" is a famous jazz composing of Wayne Shorter. In Miles Davis's album
Miles Simles, the tune is played in the same manner. It starts three time with
four tuplets; then it changes to four time with three tuplets.

Any musical time can be broken down to smaller segments of pulses.


Chris Coleman a drummer of famous church music also mentions about this :

https://youtu.be/Awm3sqre-IE?t=37s

> ... and one key thing he said to me was any time can always be broken down
> to two or three and the higher if you want to.

Musical time inherently depends on how you separate a group of pulses in your
cognition and there are always multiple ways to divide.

```
4(time) x 3(tuplets) = 12(pulses)
3(time) x 4(tuplets) = 12(pulses)
2(time) x 6(tuplets) = 12(pulses)
```

A group of pulses does not necessarily have to be divided a given length; you
can divide a group of pulses asynmetric.

```
5 (tuplets) + 3 (tuplets) = 12(pulses)
3 (tuplets) + 3 (tuplets) + 2 (tuplets) = 12(pulses)
```

My question is that when a number of pulses are specified, how many pattern 
it can be devided into.

Define a function which returns a number of patterns by a number of pulses as

```
patterns = f(pulses)
```

This function might be defined recursively.

```
f(pulses)  = (1) + f(pulses-1) , (2) + f(pulses-2) , ... , (pulses-1) + f(1)
```

For example, f(5) generates

```
5
4+1
3+2
3+1+1
2+2+1
2+1+1+1
1+1+1+1+1
```

As this is for musical analysys not for mathmatical analysys, we are not
interested in those patterns which consists two or more ones so omit those.

```
5
4+1
3+2
2+2+1
```

Rhythm patterns which share same numbers but different orders are 
different rhythm patterns. For example, Two rhythm patterns 4+1 and 1+4 are
musically different. That means all elements should be permutated.

```
5
4+1
1+4
3+2
2+3
2+2+1
2+1+2
1+2+2
```

The command program `polyrhythms` enumerate all the patterns as same mannar described above.

> ./polyrhythms 7

generates

```
7
6+1
5+2
4+3
4+2+1
4+1+2
3+4
3+3+1
3+2+2
3+1+3
2+5
2+4+1
2+3+2
2+2+3
2+2+2+1
2+2+1+2
2+1+4
2+1+2+2
1+6
1+4+2
1+3+3
1+2+4
1+2+2+2
```


Commands
==========

```
./polyrhythms [number]
```
Permutate all possible pattern within a specified number of pulses.


```
./calc.sh [number]
```
Execute ./polyrhythms with arguments from 1 to [number].
Each result of executing ./polyrhythms are printed per line.


```
./count.sh [number]
```
Execute ./polyrhythms with arguments from 1 to [number], and then display only
number of lines of their actual result.


```
./rand.sh [number]
```
Execute ./polyrhythms with [number], and then randomly show one of the lines;




