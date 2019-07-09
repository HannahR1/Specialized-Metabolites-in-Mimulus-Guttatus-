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

Name: GetSize.py
-Description: Curates the UGTs based on size. It check to see if a gene is less than 550 and more than 20 amino acids long. For these genes that fall within this threshold, it then writes the sequence to a new file, therefor cutting out genes that are too long or too short.   
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


########################################################
# Mim.UGT.v3 - curation based on PSPG box completeness #
########################################################
Name: PSPGbox.py - uses the stokholm alignment file to look for the PSPG conserved residue and then search each gene's PSPG box for deletions, (indicated by a "-") 

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
# Mim.UGT.v5 #
##############
