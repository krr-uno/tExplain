# How to run tExplain
**Requires VPN to connect to remote machine**: [link here](https://nu-vpn.nebraska.edu/)

Connect to remote machine using:
```
ssh YOURNETID@unomaha.edu@10.66.190.178
```
Where *YOURNETID* is replaced with your own NETID. Then enter the password associated with your NETID.

**All source files are located in ```/bin/Text2ALM```**

# System setup
Go to this repository's [system setup wiki](https://github.com/jorgefandinno/tExplain/wiki/System-Setup) to see how to prepare the system.

## Starting up Stanford CoreNLP
1. Navigate into the `resources/stanford-corenlp-*` folder.
2. Run the command:
```
java -mx4g -cp "*" edu.stanford.nlp.pipeline.StanfordCoreNLPServer -port 9001 -timeout 45000
```

## Starting up LTH
1. Navigate into the `resources/srl-*` folder via a second window.
2. Run the command:
```
sh run_http_server.sh 8071 '../../models/eng/'
```

## Config file
Locate the config.ini file in the root directory.
Configure the **direct** file paths to `LogicProgram_directory`, `Tuples_directory`, and `Queries_directory`.


## bAbI Narrative
To input a bAbI narrative, run:
```
python runbAbI.py Tuples/countingA.txt 7 
```
Where the first argument `Tuples/countingA.txt` is the text file containing ONE bAbI narrative.

And the second argument `7` is an integer which must belong to one of the below corresponding to one bAbI task:
bAbI task  | Number
------------- | -------------
Single Supporting Facts | 1
Two Supporting Facts | 2
Three Supporting Facts | 3
Three Argument Relations | 5
Yes/No Questions | 6
Counting | 7
Lists/Sets | 8

`runbAbI.py` will :
* create queries from the scripts located in the `Queries_directory`
* create tuples in the `Tuples_directory` location
* create logic programs in the `LogicProgram_directory` location
* execute xclingo on each tuple, logic program, and query

## Standalone Narrative
To input a standalone (non-bAbI format) narrative, run:
```
python runStandalone.py TestFiles/withoutGrabz.txt
```
Where `TestFiles/withoutGrabz.txt` is the text file containing an English narrative.

`runStandalone.py` will:
* create a **single** logic program in the `LogicProgram_directory` location
* execute xclingo on the single logic program