## Extract minor groove values from 3DNA output files and plot the minor groove graphs

3DNA (Lu and Olson, 2003) is used to calculate the minor groove values of DNA. It can be downloaded from [3DNA website](https://x3dna.org/about/). It generates an output file for every coordinate file and saves the output file with _.out_ extension. The output files are deposited under [Raw_Data/MinorGroove](https://github.com/BurcuOzden/Sox-PTF/tree/main/Raw_Data/MinorGroove).

[This script](https://github.com/BurcuOzden/Sox-PTF/blob/main/Scripts/MinorGroove/MinorGroove-function.ipynb) extracts the minor groove values from these output files and plots the minor groove graph as below. The crystal structure of Nucleosome:Sox2 complex (pdb id: [6t7b](https://www.rcsb.org/structure/6T7B) (Dodonova _et al._, 2020)) is used to compare our simulation results. So, the reference structure should have the same residue numbers with the selected SHL. For this, we rearranged the reference structure and deposited under [Raw_Data/MinorGroove/Reference](https://github.com/BurcuOzden/Sox-PTF/tree/main/Raw_Data/MinorGroove/Reference)

<img src="https://user-images.githubusercontent.com/64282221/169764667-7c73d1ec-5c45-4b00-95e5-e5af3e908bc9.png" width="450" height="250">

### Reference:
Lu, Xiang‐Jun, and Wilma K. Olson. "3DNA: a software package for the analysis, rebuilding and visualization of three‐dimensional nucleic acid structures." Nucleic acids research 31.17 (2003): 5108-5121.
