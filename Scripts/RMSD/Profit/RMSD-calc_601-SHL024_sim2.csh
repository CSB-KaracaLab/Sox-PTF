#!/bin/csh

# This script calculates the RMSD between phosphate atoms selected amino acids of Sox proteins by using Profit.
# 1) prepare a "pdb_list" that contains the names of your pdb files. Put this file into the pdb folder.
# 2) place dna_sox11_shl2_ref.pdb in your folder and make sure reference and models have the same chain/res ids.
# 3) split -l 999 pdb_list list
# 4) include dna_sox11_shl2_ref.pdb in the first line of each new pdblist
# Usage ./script listaa listab listac
# Do not forget to change the Profit path with yours.

set list1 = $argv[1]
set list2 = $argv[2]
set list3 = $argv[3]

set atoms = 'P'
set profit_dir = "/Users/klab01/Softwares/ProFitV3.1/src/"

$profit_dir/profit <<_Eod_ >> rmsd_601_SHL024_shl2_bs.tmp
     multi $list1
     atom $atoms
     zone A17-A23
     zone B\-17-B\-17
     zone B\-18-B\-18
     zone B\-19-B\-19
     zone B\-20-B\-20
     zone B\-21-B\-21
     zone B\-22-B\-22
     fit
     quit
_Eod_

set first_no = `cat rmsd_601_SHL024_shl2_bs.tmp | grep -n iter | tail -1 | awk '{print $1}' | sed 's/://g'`
set last_no = `wc -l rmsd_601_SHL024_shl2_bs.tmp | awk '{print $1}'`
@ dif = $last_no - $first_no + 1 
tail -`echo $dif` rmsd_601_SHL024_shl2_bs.tmp | grep -v iter |awk '{print $2}' | sed '/^$/d' > rmsd_601_SHL024_shl2_bs.disp_1

rm -rf *tmp

$profit_dir/profit <<_Eod_ >> rmsd_601_SHL024_shl2_bs.tmp
     multi $list2
     atom $atoms
     zone A17-A23
     zone B\-17-B\-17
     zone B\-18-B\-18
     zone B\-19-B\-19
     zone B\-20-B\-20
     zone B\-21-B\-21
     zone B\-22-B\-22
     fit
     quit
_Eod_

set first_no = `cat rmsd_601_SHL024_shl2_bs.tmp | grep -n iter | tail -1 | awk '{print $1}' | sed 's/://g'`
set last_no = `wc -l rmsd_601_SHL024_shl2_bs.tmp | awk '{print $1}'`
@ dif = $last_no - $first_no + 1 
tail -`echo $dif` rmsd_601_SHL024_shl2_bs.tmp | grep -v iter | awk '{print $2}' | sed '/^$/d' > rmsd_601_SHL024_shl2_bs.disp_2

rm -rf *tmp

$profit_dir/profit <<_Eod_ >> rmsd_601_SHL024_shl2_bs.tmp
     multi $list3
     atom $atoms
     zone A17-A23
     zone B\-17-B\-17
     zone B\-18-B\-18
     zone B\-19-B\-19
     zone B\-20-B\-20
     zone B\-21-B\-21
     zone B\-22-B\-22
     fit
     quit
_Eod_

set first_no = `cat rmsd_601_SHL024_shl2_bs.tmp | grep -n iter | tail -1 | awk '{print $1}' | sed 's/://g'`
set last_no = `wc -l rmsd_601_SHL024_shl2_bs.tmp | awk '{print $1}'`
@ dif = $last_no - $first_no + 1 
tail -`echo $dif` rmsd_601_SHL024_shl2_bs.tmp | grep -v iter | awk '{print $2}' | sed '/^$/d' > rmsd_601_SHL024_shl2_bs.disp_3

rm -rf *tmp

paste listaa rmsd_601_SHL024_shl2_bs.disp_1 > rmsd_601_SHL024_shl2.pdb
paste listab rmsd_601_SHL024_shl2_bs.disp_2 >> rmsd_601_SHL024_shl2.pdb
paste listac rmsd_601_SHL024_shl2_bs.disp_3 >> rmsd_601_SHL024_shl2.pdb

# please write your reference pdb file name here
grep -v dna_sox11_shl2_ref.pdb rmsd_601_SHL024_shl2.pdb > a
mv a rmsd_601_SHL024_shl2.pdb

# change the name of your rmsd file name "601_SHL024_sim2.rmsd-sorted"
sort -nk2 rmsd_601_SHL024_shl2.pdb > 601_SHL024_sim2.rmsd-sorted

rm rmsd_601_SHL024_shl2_bs.disp_* rmsd_601_SHL024_shl2.pdb