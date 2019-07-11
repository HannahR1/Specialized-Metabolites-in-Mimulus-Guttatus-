def main():
    outfile = open("MguttatusStrpA.fasta", "a")
    with open("MguttatusSeq.fasta")as input:
        count = 0 
        for line in input:
 
            if line[0] == ">":
                if count != 0:
                    outfile.write("\n")
                  
            
                    
                outfile.write(line.strip())
               # outfile.write("*")
                #write the name plus a new line
            else:
                outfile.write(line.strip())
                
            count += 1
#add a * to at the end of all sequences

        outfile2 = open("MguttatusStrp.fasta", "a")
        with open("MguttatusStrpA.fasta")as input: 
            count = 0
            for line in input:
                print line
                outfile2.write( line.strip() + "*"+ "\n")
                

                #if line[0] == ">":
                #    if count != 0:
                #        outfile.write("\n")
                

                #count +=1

main()








