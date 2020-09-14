
#!/bin/bash --login
########## SBATCH Lines for Resource Request ##########

#SBATCH --time=00:01:00
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu= 2G
#SBATCH --job-name tree2



#align mimulus pfam sequences and the markers
#sequences need to be the same length for FASTTREE
$HOME/Documents/MUSCLE/./muscle -in tree2.fasta -out tree2.out


#make nexus file with tree information
$HOME/Documents/FASTREE/www.microbesonline.org/fasttree/./FastTree tree2.out > tree2.nex
