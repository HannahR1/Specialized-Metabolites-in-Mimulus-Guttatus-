


#For annotations that have a full PSPG box,  writes the IDs to a new file. 
python pspgBox.py

#take out non-primary sequences 
#NOTE: change the input and output: 
#infile2 = 
#outfile2= 
python parsePrimary2.py

#check that this is a subset of the initial HMMER hits 
checkSubset.py

python RemoveWhiteSpc2.py

python Format2.py

python GetFullSeqs.py





