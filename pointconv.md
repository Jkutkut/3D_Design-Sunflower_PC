# 1º divide
- in: "[ ]+"
- out: "\n"

2º convert (https://www.browserling.com/tools/scientific-to-decimal)

3º join back:
- in: "(?<=[^N])\n"
- out: "   "

4º remove junk:
- in: [ ]*NaN
- out: ""