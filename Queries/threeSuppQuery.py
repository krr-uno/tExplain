import re, sys

questions = []
adjust = 1

with open(sys.argv[1]) as f:
    narrative = f.readlines()

for line in narrative:
    match = None
    match = re.search(r"(\d+) .* the (\w+) .* the (\w+)\?", line)
    if match:
        adjust += 1
        object = match.group(2)
        loc2 = match.group(3)
        questions.append((object, loc2))

f = open("query.lp", "w")
for q in questions:
    f.write('%%!show_trace changeLoc(%s, L1, %s, T).\n' % (q[0], q[1]))
f.close()
