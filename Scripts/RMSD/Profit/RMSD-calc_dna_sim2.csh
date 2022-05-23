#!/bin/csh

# This script calculates the RMSD between phosphate atoms selected amino acids of Sox proteins by using Profit.
# 1) prepare a "pdb_list" that contains the names of your pdb files. Put this file into the pdb folder.
# 2) place dna_sox11_dna_ref.pdb in your folder and make sure reference and models have the same chain/res ids.
# 3) split -l 999 pdb_list list
# 4) include dna_sox11_dna_ref.pdb in the first line of each new pdblist
# Usage ./script listaa listab
# Do not forget to change the Profit path with yours.

set list1 = $argv[1]
set list2 = $argv[2]
set atoms = 'P'
set profit_dir = "/Users/klab01/Softwares/ProFitV3.1/src"

$profit_dir/profit <<_Eod_ >> rmsd_dna_bs.tmp
     multi $list1
     atom $atoms
     zone B1-B7
     zone C10-C16
     fit
     quit
_Eod_

set first_no = `cat rmsd_dna_bs.tmp | grep -n iter | tail -1 | awk '{print $1}' | sed 's/://g'`
set last_no = `wc -l rmsd_dna_bs.tmp | awk '{print $1}'`
@ dif = $last_no - $first_no + 1 
tail -`echo $dif` rmsd_dna_bs.tmp | grep -v iter |awk '{print $2}' | sed '/^$/d' > rmsd_dna_bs.disp_1

rm -rf *tmp

$profit_dir/profit <<_Eod_ >> rmsd_dna_bs.tmp
     multi $list2
     atom $atoms
     zone B1-B7
     zone C10-C16
     fit
     quit
_Eod_

set first_no = `cat rmsd_dna_bs.tmp | grep -n iter | tail -1 | awk '{print $1}' | sed 's/://g'`
set last_no = `wc -l rmsd_dna_bs.tmp | awk '{print $1}'`
@ dif = $last_no - $first_no + 1 
tail -`echo $dif` rmsd_dna_bs.tmp | grep -v iter | awk '{print $2}' | sed '/^$/d' > rmsd_dna_bs.disp_2

rm -rf *tmp

paste listaa rmsd_dna_bs.disp_1 > rmsd_dna.pdb
paste listab rmsd_dna_bs.disp_2 >> rmsd_dna.pdb

# please write your reference pdb file name here
grep -v dna_sox11_dna_ref.pdb rmsd_dna.pdb > a

mv a rmsd_dna.pdb

# change the name of your rmsd file name "dna_sox11_sim2.rmsd-sorted"
sort -nk2 rmsd_dna.pdb > dna_sox11_sim2.rmsd-sorted

rm rmsd_dna_bs.disp_* rmsd_dna.pdb