#!/bin/csh

#SOX - DNA interactions
# To run the script: ./int_selection_shl4_sim2.csh



foreach i(*.interfacea)

	set j = `echo $i | sed 's/\.pdb.interfacea//g'`
    cp $i temp_file
    
	set c51 = ` grep "hbond" temp_file | awk '$4=="K" && $3=="I" && $8=="51" || $4=="K" && $3=="J" && $8=="51"' | sed "s/'/base/g" | awk '$9!="P" && $9!="OP1" && $9!="OP2" && $9!="C5base" && $9!="O5base" && $9!="C4base" && $9!="O4base" && $9!="C3base" && $9!="O3base" && $9!="C2base" && $9!="C1base" && $9!="H1base" && $9!="1H2base" && $9!="2H2base" && $9!="H3base" && $9!="H4base" && $9!="1H5base" && $9!="2H5"' | awk '{print $2}' | sort -u | wc -l `
	set c54 = ` grep "hbond" temp_file | awk '$4=="K" && $3=="I" && $8=="54" || $4=="K" && $3=="J" && $8=="54"' | sed "s/'/base/g" | awk '$9!="P" && $9!="OP1" && $9!="OP2" && $9!="C5base" && $9!="O5base" && $9!="C4base" && $9!="O4base" && $9!="C3base" && $9!="O3base" && $9!="C2base" && $9!="C1base" && $9!="H1base" && $9!="1H2base" && $9!="2H2base" && $9!="H3base" && $9!="H4base" && $9!="1H5base" && $9!="2H5"' | awk '{print $2}' | sort -u | wc -l `
	set c118 = ` grep "hbond" temp_file | awk '$4=="K" && $3=="I" && $8=="118" || $4=="K" && $3=="J" && $8=="118"' | sed "s/'/base/g" | awk '$9!="P" && $9!="OP1" && $9!="OP2" && $9!="C5base" && $9!="O5base" && $9!="C4base" && $9!="O4base" && $9!="C3base" && $9!="O3base" && $9!="C2base" && $9!="C1base" && $9!="H1base" && $9!="1H2base" && $9!="2H2base" && $9!="H3base" && $9!="H4base" && $9!="1H5base" && $9!="2H5"' | awk '{print $2}' | sort -u | wc -l `
	
	set c56 = ` grep "hydrophobic" temp_file | awk '$4=="K" && $3=="I" && $8=="56" || $4=="K" && $3=="J" && $8=="56"' | awk '{print $2}' | sort -u | wc -l`
    set c57 = ` grep "hydrophobic" temp_file | awk '$4=="K" && $3=="I" && $8=="57" || $4=="K" && $3=="J" && $8=="57"' | awk '{print $2}' | sort -u | wc -l`
	
	
	echo $j $c56 $c57 $c51 $c54 $c118 >> temp

end
    
echo "frame_no Phe56 Met57 Arg51* Asn54* Tyr118*" > Sox11_shl4_sim2.int

sed 's/\complex_shl4-fit_//g' temp |sed 's/\_sim2.interfacea//g' | sort -nk1 >> Sox11_shl4_sim2.int

rm temp temp_file
