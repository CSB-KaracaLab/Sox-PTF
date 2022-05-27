#!/bin/csh

#SOX - DNA interactions
# To run the script: ./int_selection_dna_sim1.csh



foreach i(*.interfacea)

	set j = `echo $i | sed 's/\.pdb.interfacea//g'`
    cp $i temp_file
    
	set c51 = ` grep "hbond" temp_file | awk '$3=="A" && $4=="B" && $7=="51" || $3=="A" && $4=="C" && $7=="51"' | sed "s/'/base/g" | awk '$10!="P" && $10!="OP1" && $10!="OP2" && $10!="C5base" && $10!="O5base" && $10!="C4base" && $10!="O4base" && $10!="C3base" && $10!="O3base" && $10!="C2base" && $10!="C1base" && $10!="H1base" && $10!="1H2base" && $10!="2H2base" && $10!="H3base" && $10!="H4base" && $10!="1H5base" && $10!="2H5"' | awk '{print $2}' | sort -u | wc -l `
	set c54 = ` grep "hbond" temp_file | awk '$3=="A" && $4=="B" && $7=="54" || $3=="A" && $4=="C" && $7=="54"' | sed "s/'/base/g" | awk '$10!="P" && $10!="OP1" && $10!="OP2" && $10!="C5base" && $10!="O5base" && $10!="C4base" && $10!="O4base" && $10!="C3base" && $10!="O3base" && $10!="C2base" && $10!="C1base" && $10!="H1base" && $10!="1H2base" && $10!="2H2base" && $10!="H3base" && $10!="H4base" && $10!="1H5base" && $10!="2H5"' | awk '{print $2}' | sort -u | wc -l `
	set c118 = ` grep "hbond" temp_file | awk '$3=="A" && $4=="B" && $7=="118" || $3=="A" && $4=="C" && $7=="118"' | sed "s/'/base/g" | awk '$10!="P" && $10!="OP1" && $10!="OP2" && $10!="C5base" && $10!="O5base" && $10!="C4base" && $10!="O4base" && $10!="C3base" && $10!="O3base" && $10!="C2base" && $10!="C1base" && $10!="H1base" && $10!="1H2base" && $10!="2H2base" && $10!="H3base" && $10!="H4base" && $10!="1H5base" && $10!="2H5"' | awk '{print $2}' | sort -u | wc -l `
	
	set c56 = ` grep "hydrophobic" temp_file | awk '$3=="A" && $4=="B" && $7=="56" || $3=="A" && $4=="C" && $7=="56"' | awk '{print $2}' | sort -u | wc -l`
    set c57 = ` grep "hydrophobic" temp_file | awk '$3=="A" && $4=="B" && $7=="57" || $3=="A" && $4=="C" && $7=="57"' | awk '{print $2}' | sort -u | wc -l`
	
	
	echo $j $c56 $c57 $c51 $c54 $c118 >> temp

end
    
echo "frame_no Phe56 Met57 Arg51* Asn54* Tyr118*" > Sox11_dna_sim1.int

sed 's/\complex_md-fit_//g' temp |sed 's/\_sim1.interfacea//g' | sort -nk1 >> Sox11_dna_sim1.int

rm temp temp_file
