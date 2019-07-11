










#run this command to start using HMMER methods 
export PATH=$PATH:/$HOME/Documents/HMMER/hmmer-3.2.1/hmmer-3.2.1/src/


#hmmsearch 
hmmsearch -A MimUGTs.sto UDPGT.hmm MguttatusSeq.fasta > hmmsearch.out 

python GetHmmSearchHits.py

sort MimUGTIDs.txt | uniq >  MimUGTIDsUniq.txt

fgrep -f MimUGTIDsUniq.txt MguttatusSeq.fasta > MimUGTFastaID.txt

python parsePrimary.py

#remove white space from the Raw Mimulus Annotations 
python RemoveWhiteSpc.py

python GetFullSeqs.py
