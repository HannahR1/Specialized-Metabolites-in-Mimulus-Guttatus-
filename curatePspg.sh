


#For annotations that have a full PSPG box,  writes the IDs to a new file. 
python pspgBox.py

#take out non-primary sequences 
#NOTE: change the input and output: 
#infile2 = 
#outfile2= 
python parsePrimary2.py

#check that this is a subset of the initial HMMER hits 
checkSubset.py

#Get full sequences that have a full PSPG box
#NOTE: change the input and output: 
#infile2 = "PspgID.txt"
#outfile2= "Mim.UGT.v3"
python GetFullSeqs.py





