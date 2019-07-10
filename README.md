# Specialized-Metabolites-in-Mimulus-guttatus-
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
removes the duplicate annotations id that coresspond to the same gene and ids that coressopnds to different annotated versions of the same gene (secondary, tertiary)
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
-Description: Curates the UGTs based on size. It check to see if a gene is less than 550 and more than 200 amino acids long. For these annotations that fall within this threshold, it then writes the sequence to a new file, therefor cutting out annotations 
that are too long or too short.   
-Input: "HMMERuniqSeqsStrp.fasta"
-Output: "sizeUniqUpdated.fasta" CHANGE TO Mim.UGT.v2
-comments: Upper bound was origanlly 500 but was then increases to 550.   





########################################################
# Mim.UGT.v3 - curation based on PSPG box completeness #
########################################################
Name: TBD
-Description: convert sizeUniqUpdated.fasta into a stolkholm file to be used to analyze the PSPG box in these annotations. 
-Input: sizeUniqUpdated.fasta
-Output: sizeUniqUpdated.sto 
-comments: 

Name: PSPGbox.py 
-Description: uses the stokholm alignment file to look for the PSPG conserved residue and then search each gene's PSPG box for deletions, (indicated by a "-") 
-Input: TBD
-Output: pspg.out- the names of the annotations that have a full PSPG box , "fullPSPG.txt" - file containing the PSPG boxes of the annotations that have full PSPG boxes that coresspond to the names in pspg.out. 
-comments: 

Name: GetMimSeqs
-Description: 
-Input: pspg.out
-Output:  Mim.UGT.v3
-comments: 





##############################################################################
# Mim.UGT.v4 - curate based on annotaions that coresspond to expressed genes #
##############################################################################

Name: 
-Description: 
-Input: 
-Output: 
-comments: 

Name: 
-Description: use the R file to determine if the gene is a good candidate? 
-Input: 
-Output: 
-comments: 

