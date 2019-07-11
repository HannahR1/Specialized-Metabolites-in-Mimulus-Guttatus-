



#curates Mim.UGT.v3.fasta based on expressed genes 

sort expressedAnnot.txt | uniq >  expressedAnnotuniq.txt

fgrep -f expressedAnnotuniq.txt MguttatusSeq.fasta > MimUGTExpFastaID.txt


#NOTE:change input and output
#infile2 = "MimUGTExpFastaIDuniq"
#outfile2 = "MimUGTPrimary2.txt"
python parsePrimary.py

#NOTE:change input and output
#infile4 = "Mim.UGT.v3.format.fasta"
#outfile4 = "Mim.UGT.v4.fasta"
python GetFullSeqs.py
