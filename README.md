# Specialized-Metabolites-in-Mimulus-guttatus-
#readme file 


# HMMsearch - Extract the UGTs from the Mimulus Protein Annotation Database 


HMMsearch.sh - extracts the mimulus genes that are UGTs 
Input(s):
MguttatusSeq.fasta - genome of mimulus guttatus annotated genes
UDPGT.hmm - hmm profile of UDPGTs from pfam 
Files: GetHmmSearchHits.py, parsePrimary.py, RemoveWhiteSpc.py, GetFullSeqs.py

Output(s): hmmsearch.out - the hmmersearch output file not formatted in the sto
MimUGTs.sto - hmmserach output formatted into .sto file
MimUGTIDsUniq.txt - IDs from the MimUGTIDs.txt that are unique and nonoverlapping
MimUGTFastaID.txt -  full fasta ID from the original mimulus genome annotation file

Name: GetHmmSearchHits.py
Description: get the names of the mimulus genes that was a hit 
Input: MimUGTs.sto
Output: MimUGTIDs.txt

Name: parsePrimary.py
Description: parses through the MimUGTIDs.txt to write fasta IDs refer only to primary annotations to the output file. 
Input(s): MimUGTFastaID.txt
Outputs(s): MimUGTPrimary.txt

Name: GetFullSeqs.py
Description: Writes full sequences from mimulus genome to the output file given a list of full fasta IDs 
Input: MimUGTPrimary.txt, MguttatusStrp.fasta
Output: Mim.UGT.v1.fasta 

Name: RemoveWhiteSpc.py
Description: Removes the whitespace and formats the file that contains the all mimulus protein annotation sequences. 
Input: MguttatusSeq.fasta
Output: MguttatusStrp.fasta

#############################################################################
# Curation 1 - PSPG completeness                                            #
#############################################################################

Name: curatePspg.sh
Description: curates sequences based on the PSPG conserved motif completeness
Files: 
pspgBox.py
GetFullSeqs.py - NOTE: change the input and output:
infile2 = PspgID.txt
outfile2= Mim.UGT.v2.fasta

Name: pspgBox.py
Description: For annotations that have a full PSPG box,  writes the IDs to a new file.
Input: MimUGTs.sto #### NEEDS TO BE CHANGED TO THE OUTPUT FROM formatPspg.py###
Output: PspgID.txt, "fullPSPG.txt" 

Name: formatPspg.py
Description: reformats MimUGTs.sto so that it can be parsed for PSPG box completeness. 
Input: MimUGTs.sto
Output: MimUGTsFmt.sto
 
################################################
# Curation 2 - sequence Size                   #
################################################

Name: CurateSize.sh         
Description: Curates Mim.UGT.V2.fasta based on length of sequence 
Files: strpSeqs.py, GetSize.py
 
Name: strpSeqs.py
Description: removes the white space from the sequences 
Input:  Mim.UGT.v2.fasta
Output: Mim.UGT.v2.Strp.fasta

Name: GetSize.py
-Description:  For annotations that fall within this threshold between 200 and 550 amino acids long, it writes the sequence to a new file. 
-Input: Mim.UGT.v2.Strp.fasta
-Output:  Mim.UGT.v3.fasta
-comments: Upper bound was origanly 500 but was then increased to 550.   

#####################################################
# Curation3 -  Expressed Mimulus UGTs               #
#####################################################
 
Name: curateExpressed.sh
Description: curates Mim.UGT.v3 based on the mimulus gutattus UGTs that are expressed. 
Input: expressedAnnot.txt
Output: expressedAnnotuniq.txt - gets the unique fasta IDs, MimUGTExpFastaID.txt - full fasta IDs of expressed genes 
Files: 
parsePrimary.py - NOTE:change input and output: 
infile2 = "MimUGTExpFastaIDuniq"
outfile2 = "MimUGTPrimary2.txt"
GetFullSeqs.py - NOTE: change input and output: 
infile4 = "Mim.UGT.v3.format.fasta"
outfile4 = "Mim.UGT.v4.fasta"

Name: expressedAnnot.txt
Description: contains the IDs of the Mimulus UGT annotations that are associated with expressed genes. Notes: (from heatmap) 

