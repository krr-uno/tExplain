import os, glob, sys
from sys import argv

directory, filename = argv[1].split('/')

regex = filename + "*.tp.lp"

file_list = glob.glob(os.path.join(os.getcwd(), directory, regex))
query_list = glob.glob(os.path.join(os.getcwd(), "query*.lp"))

file_list.sort()
query_list.sort()
for f, q in zip(file_list, query_list):
    command = "xclingo -n 0 0 %s %s %s" % (f, q, "trace-rule.lp")
    # print(command)
    os.system(command)
