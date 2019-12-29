
#!/bin/bash --login
########## SBATCH Lines for Resource Request ##########

#SBATCH --time=00:01:00
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu= 2G
#SBATCH --job-name HMMERsearch

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

python Format.py 

python GetFullSeqs.py


#####new commands#######
export PATH=$PATH:/$HOME/Documents/HMMER/hmmer-3.2.1/hmmer-3.2.1/src/

hmmsearch -A MimUGTs.sto UDPGT.hmm MguttatusSeq.fasta > hmmsearch.out 

python GetHmmSearchHits2.py

sort MimUGTIDs.txt | uniq >  MimUGTIDsUniq.txt

fgrep -f MimUGTIDsUniq.txt MguttatusSeq.fasta > MimUGTFastaID.txt

python parsePrimary.py

python RemoveWhiteSpc1.py

python Format1.py

python GetFullSeqs.py








