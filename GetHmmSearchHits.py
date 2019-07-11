def main():
    #NOTE: make sure that on the 5th line (the blank line before the file starts to list the names of genes) there are spaces on that line not just a "/n" character
    inFileName = "MimUGTs.sto"
    outFileName = "MimUGTIDs.txt"
    #infile = open(inFileName)
    #lines = infile.readlines()
    #infileName.close
    
    print ("writing to output file ..." )


    outfile = open(outFileName, "a")
    with open( inFileName)as input:
        numSeqs = 0;
        #linenum = 0
        for line in input:
            #if linenum == 5:
             #   outFileName.write("######") 
            if (line[5] == "M"):
                numSeqs += 1
                #write to output file
                num = 0;
                #open out file for appending
                
                while num != 12:
                    outfile.write(line[num + 5])
                    num += 1
                outfile.write("\n")

            if (numSeqs == 158):
                break
        outfile.close()
    print (numSeqs)


main()

