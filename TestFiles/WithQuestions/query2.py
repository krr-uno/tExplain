import re, sys

questions = []
adjust = 1

with open(sys.argv[1]) as f:
    narrative = f.readlines()

for line in narrative:
    match = None
    match = re.search(r"(\d+)\s.* the (.*)\?", line)
    if match:
        qNum = int(match.group(1)) - adjust
        adjust += 1
        object = match.group(2)
        questions.append((qNum, object))

f = open("query.lp", "w")
for q in questions:
    f.write('%%!show_trace locationT2(%s,L,%d).\n' % (q[1], q[0]))
f.close()
