
def main():
    infile1 = "MimUGTPrimary.txt"
    infile2 = "PspgID.txt"
    outfile1= "Mim.UGT.v1.fasta" 
    outfile2= "Mim.UGT.v2.fasta" 
#dont acutaully need? 
#   infile3 = "" 
#   outfile3 = "Mim.UGT.v3.fasta"
    infile4 = "MimUGTPrimary2.txt"
    outfile4 = "Mim.UGT.v4.fasta"

    #infile3 = "HMMERuniqRFEP.txt"
    #outfile3 = "HMMERuniqSeqsE.fasta"
#    outfile4 = "Test" 
    found = 0;
    with open("MguttatusStrp.fasta")as input:
        print("working on getting the sequences in the in a fasta file!........")
        for line in input: 
            if found == 139:
                print ("All seqs found", found )
                #break
                
            if line[0] == ">":
                
                #check that fasta name if its in the mim file  
                
                #open the mim file and readlines 
                #this puts it into a list 
                mimFile = open(infile4)
                mimList = mimFile.readlines()
                mimFile.close()
                print(mimList[0])
                '''print(line[13])
                print(line[14])
                print(line[15])

                return
                '''
                print(line[10], mimList[0][10])
                #break
                #extract the name from the line
                outfile = open(outfile4, "a")
                for lineM in mimList:
                #print(line[10], lineM[10])
                    
                # if lineM in line:
               
                    if line[7] == lineM[7] and line[8]== lineM[8] and line[9] == lineM[9] and line[10]== lineM[10] and line[11]== lineM[11] and line[12]== lineM[12] and line[13] == lineM[13] and line[14] == lineM[14]: 
                        found += 1
                        print("found")
                        #write the name and sequence to the new file
                        #open the new file for appending 
                        
                        #outfile.write(line)
                        #outfile.write("\n")
                        if(line[10]=="1" and line[11] =="1" and line[12] =="6"):
                                print ("found the troubled line", line )

                        i = 0
                        outfile.write("\n")
                        print(line)
                        while line[i] != "*":
                            
                            if(line[10]=="1" and line[11] =="1" and line[12] =="6"):
                                print ("found the troubled line", line )
                            outfile.write(line[i])
                            print("wrote")
                            if line[i-4] == "=" and line[i-3]== "v" and line[i-2]== "2" and  line[i-1]== "." and line[i] == "0":
                                outfile.write("\n")
                                #print(line[i])
                            
                            i += 1
       # print(found) 
                    
main()
    
