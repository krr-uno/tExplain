# How to run tExplain
Connect to remote machine using:
```
ssh YOURNETID@unomaha.edu@10.66.190.178
```
Where *YOURNETID* is replaced with your own NETID. Then enter the password associated with your NETID.

**All source files are located in ```/bin/Text2ALM```**

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
sh run_http_server.sh 8071 '/home/joelsare@unomaha.edu/Documents/Text2ALM/resources/models/eng'
```

## Create tuples
1. Navigate into the `Tuples` folder via a third window.
2. Run the command:
```
python process.py yesNoA.txt
```
Where *yesNoA.txt* is the file to be processed into tuple format.

This command will split the text file into five narratives and five question-answer-explanation tuples in a newly created directory within the `Tuples` directory. In this case, the directory `yesNoA` would be created from *yesNoA.txt*.

## Create logic programs
1. Navigate into the `text2ALM` directory.
2. Run the command:
```
python getLogicPrograms.py Tuples/twoSuppA
```
Where `Tuples/twoSupA` is the directory that contains the processed narratives and question-answer-explanation tuples.

This will create associated logic programs which are stored in the location `text2ALM/config.txt` is configured.

## Create queries
Run the command:
```
python Queries/twoSuppQuery.py Tuples/yesNoA.txt
```
Where `twoSuppQuery.py` corresponds to the correct type of queries you want to create and `Tuples/yesNoA.txt` is the text file you wish to create queries from.

## Run Xclingo
Run the command:
```
python xclingo.py LogicPrograms/yesNoA
```
Where `LogicPrograms` is the directory where generated logic programs are located and `yesNoA` is the common prefix for all the logic programs you want to process.

For better readability, use redirection:
```
python xclingo.py LogicPrograms/yesNoA > output.txt
```