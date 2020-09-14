
#!/bin/bash --login
########## SBATCH Lines for Resource Request ##########

#SBATCH --time=00:01:00
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu= 2G
#SBATCH --job-name tree1

#makes a fastree with the mimulus genes and markers from hmmsearch
#this is the unfiltered list of mimulus genes
#outputs a nexus file that contains information on hwo to buidl the tree




#align the markers and the mimulus domains using msucle
$HOME/Documents/MUSCLE/./muscle -in fastreeQ1.fasta -out fastreeQ1.out

#make fast tree
$HOME/Documents/FASTREE/www.microbesonline.org/fasttree/./FastTree $HOME/Documents/MUSCLE/fastreeQ1.out > fasttreeQ1T.nex



$HOME/Documents/MUSCLE/./muscle -in fastreeQ1New.fasta -out fastreeQ1New.out
$HOME/Documents/FASTREE/www.microbesonline.org/fasttree/./FastTree $HOME/Documents/MUSCLE/fastreeQ1New.out > fasttreeQ1TNew.
