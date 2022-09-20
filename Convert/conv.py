from sys import argv
import re

with open(argv[1]) as f:
    lines = f.readlines()

qLineNums = []

for line in lines:
    match = None
    match = re.search(r"(\d+).*\?", line)
    if match:
        qLineNums.append(int(match.group(1)))

lineAdj = 0

for line in lines:
    match = None
    match = re.search(r"(\d+)(.*?\.)", line)
    if match:
        num = int(match.group(1)) - lineAdj
        print(num, match.group(2))
    match = None
    match = re.search(r"(\d+) (.*?)(\d.*)", line)
    if match:
        nums = match.group(3)
        strNums = ""
        for num in nums.split(" "):
            num = int(num)
            adj = 0
            for q in qLineNums:
                if num < q:
                    break
                adj += 1
            num -= adj
            strNums += str(num) + " "
        lastQuestion = int(match.group(1))
        lineAdj += 1
        s = str("\n" + match.group(2) + strNums + "\n")
        print(s)