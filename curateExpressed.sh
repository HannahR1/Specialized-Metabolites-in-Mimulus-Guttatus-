



#curates Mim.UGT.v3.fasta based on expressed genes 

sort expressedAnnot.txt | uniq >  expressedAnnotuniq.txt

fgrep -f expressedAnnotuniq.txt MguttatusSeq.fasta > MimUGTExpFastaID.txt


#NOTE:change input and output
#infile2 = "MimUGTExpFastaIDuniq"
#outfile2 = "MimUGTPrimary2.txt"
python parsePrimary.py

python RemoveWhiteSpc4.py

python Format4.py


python GetFullSeqs.py --> new name GetFullSeqsExpsd.py


###new commands###
sort expressedAnnot.txt | uniq >  expressedAnnotuniq.txt
fgrep -f expressedAnnotuniq.txt MguttatusSeq.fasta > MimUGTExpFastaID.txt
# fgrep -f expressedAnnotuniq.txt Mguttatus_256_v2.0.protein_primaryTranscriptOnly.fasta > MimUGTExpFastaID.txt 

python parsePrimary3.py
python RemoveWhiteSpc4.py
python Format4.py
python GetFullSeqsExpsd.py
