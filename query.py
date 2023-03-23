import re, sys

questions = []
query_line_num = []
adjust = 1
val = int(sys.argv[2])
regex = ""

with open(sys.argv[1]) as f:
    narrative = f.readlines()

queriesDir = sys.argv[3]

if val == 2: # two supporting facts
    regex = r"(\d+)\s.* the (.*)\?"
elif val == 3: # three supporting facts
    regex = r"(\d+) .* the (\w+) .* the (\w+)\?"
elif val == 6: # yes no 
    regex = r"(\d+) Is (.*) in the (.*)\?"
elif val == 7: # counting
    regex = r"(\d+) .* is (.*) carrying\?"
elif val == 8: # lists
    regex = r"(\d+) .* is (.*) carrying\?"

for line in narrative:
    match = None
    match = re.search(regex, line)
    if match:
        if val == 2: # two supporting facts
            qNum = int(match.group(1)) - adjust
            object = match.group(2)
            questions.append((qNum, object))
        elif val == 3: # three supporting facts
            object = match.group(2)
            loc2 = match.group(3)
            questions.append((object, loc2))
        elif val == 6: # yes no 
            lineNum = int(match.group(1)) - adjust
            person = match.group(2).lower()
            location = match.group(3).lower()
            questions.append((person, location, lineNum))
        elif val == 7: # counting
            lineNum = int(match.group(1)) - adjust
            person = match.group(2).lower()
            questions.append((person, lineNum))
        elif val == 8: # lists
            lineNum = int(match.group(1)) - adjust
            person = match.group(2).lower()
            questions.append((person, lineNum))
        adjust += 1
        query_line_num.append(int(match.group(1)))

# for q in query_line_num:
#     print(q)

adjust = 1
for q in questions:
    filename = "query" + str(adjust) + ".lp"
    filename = queriesDir + '/' + filename
    f = open(filename, "w")
    if val == 2: # two supporting facts
        f.write('%%!show_trace locationT2(%s,L,%d).\n' % (q[1], q[0]))
    elif val == 3: # three supporting facts
        f.write('%%!show_trace lastChangeLoc(%s, L1, %s, T).\n' % (q[0], q[1]))
    elif val == 6: # yes no 
        f.write('%%!show_trace notInLocation(%s, %s, %d).\n' % (q[0], q[1], q[2]))
        f.write('%%!show_trace inLocation(%s, %s, %d).\n' % (q[0], q[1], q[2]))
        f.write('is_aB(%s, %s).\n' % (q[1], q[1]))
    elif val == 7: # counting
        f.write('%%!show_trace numberObjectsbyEntityatTime(N, %s, %d).\n' % (q[0], q[1]))
    elif val == 8: # lists
        f.write('%%!show_trace entityCarrying(N, %s, %d).\n' % (q[0], q[1]))
    for i in range(0,adjust):
        f.write('query(%s).\n' % (query_line_num[i]))
        print(adjust)
    adjust += 1
    f.close()
