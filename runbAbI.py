import os, glob, configparser, re, shutil
from sys import argv

#1 – Single Supporting Facts
#2 – Two Supporting Facts
#3 – Three Supporting Facts
#5 – Three Argument Relations 
#6 – Yes/No Questions 
#7 – Counting 
#8 – Lists/Sets 
valid = [2,3,6,7,8]

def process(name):
    i = 0
    current = 0
    narrativeName = name + "Narrative" + str(current + 1) + ".txt"
    narrativeFile = open(narrativeName, 'w')
    questionName = name + "Question" + str(current + 1) + ".txt"
    questionFile = open(questionName, 'w')
    seen = 0
    while i < len(narrative):
        line = narrative[i]
        i += 1
        if '?' in line:
            current += 1
            if seen < current:
                print(re.sub('^\d+ ', '', line), file = questionFile, end="")
                seen += 1
                if i == len(narrative):
                    break
                narrativeFile.close()
                questionFile.close()
                narrativeName = name + "Narrative" + str(current + 1) + ".txt"
                narrativeFile = open(narrativeName, 'w')
                questionName = name + "Question" + str(current + 1) + ".txt"
                questionFile = open(questionName, 'w')
                i = 0
                current = 0
        else:
            print(re.sub('^\d+ ', '', line), file = narrativeFile, end="")

def getLogicPrograms(filename):
    directory = "%s/%s" % (logicDir, filename)
    # if os.path.exists(directory):
    #     shutil.rmtree(directory)
    file_list = glob.glob(os.path.join(os.getcwd(), specificTupleDir, "*Narrative*.txt"))
    file_list.sort()
    # print(file_list)

    for f in file_list:
        # print(f)
        command = "./logic.sh " + f + " " + filename
        os.system(command)

def xclingo():
    directory = "%s/%s" % (logicDir, filename)

    regex = filename + "*.tp.lp"
    masteroutputfile = xclingoDir + "/" + filename + "/" + filename + ".txt"
    # print("master:", masteroutputfile)

    file_list = glob.glob(os.path.join(os.getcwd(), directory, regex))
    query_list = glob.glob(os.path.join(os.getcwd(), "query*.lp"))

    # print("file_list", file_list)
    # print("query_list", query_list)

    file_list.sort()
    query_list.sort()

    specificXclingoDir = xclingoDir + "/" + filename
    if os.path.exists(specificXclingoDir):
        shutil.rmtree(specificXclingoDir)
    os.mkdir(specificXclingoDir)

    for f, q in zip(file_list, query_list):
        outputfile = os.path.basename(f).replace('.tp.lp', '.txt')
        outputfile = specificXclingoDir + "/" + outputfile
        command = "xclingo -n 0 0 %s %s %s > %s" % (f, q, "trace-rule.lp", outputfile)
        os.system(command)
        command = "cat %s >> %s" % (outputfile, masteroutputfile)
        os.system(command)

num = argv[2]
if str.isdigit(num):
    if int(num) not in valid:
        print("ERROR: second arguments must be either: %s." % valid)
        quit()
else:
    print("ERROR: second argument must be integer")
    quit()

num = int(argv[2])
filename = os.path.basename(argv[1]).replace('.txt', '')

with open(argv[1]) as f:
    narrative = f.readlines()

config = configparser.ConfigParser()
config.read("config.ini")
logicDir = config['APP']['logicprogram_directory']
tuplesDir = config['APP']['tuples_directory']
queriesDir = config['APP']['queries_directory']
xclingoDir = config['APP']['xclingo_directory']
baseDir = os.getcwd()



# GENERATE TUPLES
os.chdir(tuplesDir)
if os.path.exists(filename):
    shutil.rmtree(filename)
os.mkdir(filename)
os.chdir(filename)
specificTupleDir = os.getcwd()
process(filename)

# GENERATE LOGIC PROGRAMS
os.chdir(baseDir)
getLogicPrograms(filename)

# GENERATE QUERIES
command = ""
if num == 2:
    command = "python %s/%s %s" % (queriesDir, "twoSuppQuery.py", argv[1])
elif num == 3:
    command = "python %s/%s %s" % (queriesDir, "threeSuppQuery.py", argv[1])
elif num == 6:
    command = "python %s/%s %s" % (queriesDir, "yesNoQuery.py", argv[1])
elif num == 7:
    command = "python %s/%s %s" % (queriesDir, "countingQuery.py", argv[1])
elif num == 8:
    command = "python %s/%s %s" % (queriesDir, "listsQuery.py", argv[1])
os.system(command)


# RUN XCLINGO
xclingo()
