import os, glob, configparser, re, shutil
from sys import argv

#1 – Single Supporting Facts
#2 – Two Supporting Facts
#3 – Three Supporting Facts
#5 – Three Argument Relations 
#6 – Yes/No Questions 
#7 – Counting 
#8 – Lists/Sets 
valid = [1,2,3,5,6,7,8]

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
                if seen == 5:
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
    file_list = glob.glob(os.path.join(os.getcwd(), specificTupleDir, "*Narrative*.txt"))
    file_list.sort()
    print(file_list)

    for f in file_list:
        print(f)
        command = "./logic.sh " + f + " " + filename
        os.system(command)


if str.isdigit(argv[2]):
    if int(argv[2]) not in valid:
        print("ERROR: second arguments must be either 1, 2, 3, 5, 6, 7, or 8.")
        quit()
else:
    print("ERROR: second argument must be integer")
    quit()

filename = os.path.basename(argv[1]).replace('.txt', '')

with open(argv[1]) as f:
    narrative = f.readlines()

config = configparser.ConfigParser()
config.read("config.ini")
logicDir = config['APP']['logicprogram_directory']
tuplesDir = config['APP']['tuples_directory']
queriesDir = config['APP']['queries_directory']

baseDir = os.getcwd()


# GENERATE TUPLES
os.chdir(tuplesDir)
os.mkdir(filename)
os.chdir(filename)
specificTupleDir = os.getcwd()
process(filename)


# GENERATE LOGIC PROGRAMS
os.chdir(baseDir)
getLogicPrograms(filename)