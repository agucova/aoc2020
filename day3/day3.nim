import arraymancer, strutils, sugar

let input = splitLines(readFile("inputs/day3.inp"))[0 .. ^2]
var cMap = newSeq[seq[char]]()

for line in input:
    cMap.add(cast[seq[char]](line))

let map = cMap.toTensor()
var (dy, dx) = (1, 3)
var (x, y) = (0, 0)
