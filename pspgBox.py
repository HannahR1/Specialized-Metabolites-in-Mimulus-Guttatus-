def main():
#number of amino acids in the conserved sequence 
    
    outfile = open("PspgID.txt", "a")    
    outfile2 = open("fullPSPG.txt", "a")
    fileI = open("MimUGTs.sto", "r")
    find = 0; 
    for line in fileI:
        if line[0] == "X":
            find = find + 1
        #checks that itsin the right section of the sto file 
        if find == 3:
           # print ("in the right sections: ", line)
            if line[0] == "M":
                #print("here") 
                #break
                #then check the PSPG box
                count = 0
                pspg = True
                seq = ""
                while count < 48:
                    seq += line[count + 119]
                    #print ("ran" , count)
                    #print(line[count + 109])
                    if line[count + 120] == "-":
                        #get the name of that sequence
                        pspg = False
                    count += 1
                if pspg == True:
                    #get the name of the gene
                    #search for the name in HMMERPfamHits.fasta
                    #write this to another fasta file
                    
                    name = ">"
                    i = 0
                    while line[i] != "p":
                        #append the characters line line[i] to the string 
                        name += line[i] 
                        i +=1
                    ###########################################
                    # uncomment to print to output file       #
                    ###########################################
                    #prints the PSPG box of genes that have a complete PSPG box 
                    outfile2.write(seq)
                    outfile2.write("\n")
                    ("full pspg", name)
                    
                    ###########################################
                    # uncomment to print to output file       #
                    ###########################################
                    #prints the names of the genes that have a complete PSPG box
                    outfile.write(name)
                    outfile.write("\n")
                else: 
                    print(seq)

main()



