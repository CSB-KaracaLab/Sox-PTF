### Calculate P-RMSD and draw the violin plots

P-RMSD (Root Mean Square Deviations of the DNA Phosphorus atoms) computations are performed with Profit (Martin, A.C.R., http://www.bioinf.org.uk/software/profit/). The tool can be downloaded from the website.

For all P-RMSD calculations, DNA of the Sox11:DNA complex (pdb id: [6t78](https://www.rcsb.org/structure/6t78), (Dodonova _et al._, 2020)) is used as a reference. 

To compute P-RMSD values, the reference structure and the conformers should have the same chain id and residue number. For this, we have rearranged the reference structure chain id and residue numbers according to DNA:sox11, 601-SHL024 (free nucleosome), Sox11:SHL2, Sox11:dyad and Sox11:SHL4. 
These reference structures are deposited under [Raw_Data/RMSD/References](https://github.com/BurcuOzden/Sox-PTF/tree/main/Raw_Data/RMSD/References)

Profit scripts to generate the P-RMSD files over the simulations are under [Profit folder](https://github.com/BurcuOzden/Sox-PTF/tree/main/Scripts/RMSD/Profit).

[This script](https://github.com/BurcuOzden/Sox-PTF/blob/main/Scripts/RMSD/PRMSD-violinplots.ipynb) is used to generate the violin plots as below.


<img src="https://user-images.githubusercontent.com/64282221/169827312-3be7f536-1b6f-4785-801f-2968f843732f.png" width="200" height="250">   <img src="https://user-images.githubusercontent.com/64282221/169827559-a94952e3-df27-4a9e-af3b-31fd6e521507.png" width="200" height="250">



#### Reference

Dodonova,S.O., Zhu,F., Dienemann,C., Taipale,J. and Cramer,P. (2020) Nucleosome-bound SOX2 and SOX11 structures elucidate pioneer factor function. Nature 2020 580:7805, 580, 669–672.

Martin, A.C.R., http://www.bioinf.org.uk/software/profit/.
