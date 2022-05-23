#!/bin/csh

# This script calculates the RMSD between phosphate atoms of selected amino acids of Sox proteins by using Profit.
# 1) prepare a "pdb_list" that contains the names of your pdb files. Put this file into the pdb folder.
# 2) place list and dna_sox11_dyad_sim2_ref.pdb in your folder and make sure reference and models have the same chain/res ids.
# 3) split -l 999 pdb_list list
# 4) include dna_sox11_dyad_sim2_ref.pdb in the first line of each new pdblist (listaa, listab and so on)
# Usage ./script listaa listab
# Do not forget to change the Profit path with yours.

set list1 = $argv[1]
set list2 = $argv[2]
set atoms = 'P'

# Do not forget to change the Profit directory location with your path!
set profit_dir = "/Users/klab01/Softwares/ProFitV3.1/src/"

$profit_dir/profit <<_Eod_ >> rmsd_dyad_bs.tmp
     multi $list1
     atom $atoms
     zone A\-3-A\-3
     zone A\-2-A\-2
     zone A\-1-A\-1
     zone A0-A3
     zone B\-2-B\-2
     zone B\-1-B\-1
     zone B0-B3
     fit
     quit
_Eod_

set first_no = `cat rmsd_dyad_bs.tmp | grep -n iter | tail -1 | awk '{print $1}' | sed 's/://g'`
set last_no = `wc -l rmsd_dyad_bs.tmp | awk '{print $1}'`
@ dif = $last_no - $first_no + 1 
tail -`echo $dif` rmsd_dyad_bs.tmp | grep -v iter |awk '{print $2}' | sed '/^$/d' > rmsd_dyad_bs.disp_1

rm -rf *tmp

$profit_dir/profit <<_Eod_ >> rmsd_dyad_bs.tmp
     multi $list2
     atom $atoms
     zone A\-3-A\-3
     zone A\-2-A\-2
     zone A\-1-A\-1
     zone A0-A3
     zone B\-2-B\-2
     zone B\-1-B\-1
     zone B0-B3   
     fit
     quit
_Eod_

set first_no = `cat rmsd_dyad_bs.tmp | grep -n iter | tail -1 | awk '{print $1}' | sed 's/://g'`
set last_no = `wc -l rmsd_dyad_bs.tmp | awk '{print $1}'`
@ dif = $last_no - $first_no + 1 
tail -`echo $dif` rmsd_dyad_bs.tmp | grep -v iter | awk '{print $2}' | sed '/^$/d' > rmsd_dyad_bs.disp_2

rm -rf *tmp

paste listaa rmsd_dyad_bs.disp_1 > rmsd_dyad.pdb
paste listab rmsd_dyad_bs.disp_2 >> rmsd_dyad.pdb

# please write your reference pdb file name here
grep -v dna_sox11_dyad_sim2_ref.pdb rmsd_dyad.pdb > a
mv a rmsd_dyad.pdb

# change the name of your rmsd file name "Sox11_dyad_sim2.rmsd-sorted"
sort -nk2 rmsd_dyad.pdb > Sox11_dyad_sim2.rmsd-sorted

rm rmsd_dyad_bs.disp_* rmsd_dyad.pdb