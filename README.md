# Specialized-Metabolites-in-Mimulus-Guttatus-
#readme file 



##############
# Mim.UGT.v1 #
##############

Name: GetHmmSearchHits.py
-Description: Get the names of the mimulus gene hits from the hmmer search method
-Input: "HMMERPfamStock.sto" 
-Output: "HMMERPfamHits.txt"
-comments: 

Name: RefineHits.sh 
-Description: 
converts the ids to the first line of the fasta name
removes the duplicate genes id that coresspond to the same gene and ids that coressopnds to different annotated versions of the same gene (secondary, tertiary)
-Input: TBD
-Output: 
-comments: 

Name: GetMimSeqs.py
-Description: Get ull length sequences from using a list of the fata headers and the mimulus genome amino acid sequences. 
-Input: ____, ____, 
-Output: 
-comments: Used Multiple Times for each  Mim.UGT version 

--->Name: strip.py 
-Description: Removes all the white space from MguttatusSeq.fasta so that it     can be easily used to extract sequences from. 
-Input: "MguttatusSeq.fasta"
-Output: "MGutStrp.fasta"



#######################################
# Mim.UGT.v2 - Curation based on size # 
#######################################

Name: 
-Description: 
-Input: 
-Output: 
-comments: 

Name: 
-Description: 
-Input: 
-Output: 
-comments: 

Name: 
-Description: 
-Input: 
-Output: 
-comments: 


##############
# Mim.UGT.v3 #
##############






##############
# Mim.UGT.v5 #
##############
