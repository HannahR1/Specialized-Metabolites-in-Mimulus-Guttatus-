def main():
    #read in the file and check the _th character
#if it is not a "1" then remove from the file output
    infile1 = "MimUGTFastaID.txt"
    outfile1 = "MimUGTPrimary.txt"
    infile2 = "MimUGTExpFastaIDuniq"
    outfile2 = "MimUGTPrimary2.txt"
   # test1 = "MimUGTExpFastaIDuniq.txt"
   # test1A = "out"
    print ("These fasta IDs will be removed: ") 
    with open(test1)as input:
        for line in input:
            if line[14] == "1":
                #write that line to the new file
                outfile = open(test1A, "a")
                outfile.write(line)
            else:
                print (line)


main()
