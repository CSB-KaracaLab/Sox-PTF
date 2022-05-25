#!/bin/csh

# Place contact_type.py and compute_interfacea.csh scripts into the folder that contains pdb files.
# This script runs the interfacea contact_type.py script to generate output for all the pdbs in the folder
# To run this script: ./compute_interfacea.csh

foreach i(*.pdb)
	set j = `echo $i | sed 's/\.pdb//g'`
    cp $i complex.pdb
    python contacts_type.py > $j".interfacea" 
end
rm complex.pdb
    