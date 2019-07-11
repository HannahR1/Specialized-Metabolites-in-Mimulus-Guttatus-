def main():
    outfile = open("Mim.UGT.v2.Strp.fasta", "a")
    with open("Mim.UGT.v2.fasta")as input:
        for line in input:
            if line[0] == ">":
                outfile.write("\n")
                outfile.write(line.strip())

                #write the name plus a new line
            else:
                outfile.write(line.strip())
main()
