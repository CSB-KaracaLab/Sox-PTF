![github_title](https://user-images.githubusercontent.com/64282221/162792508-e10eada6-6a7f-4adc-bf41-3226b6720758.png)

[![DOI:10.1021/acs.jcim.2c01520](http://img.shields.io/badge/DOI-10.1021/acs.jcim.2c01520-B31B1B.svg)](https://pubs.acs.org/doi/10.1021/acs.jcim.2c01520)

Pioneer transcription factors (PTFs) have the remarkable ability to directly bind to chromatin to stimulate vital cellular processes. In this work, we dissect the universal binding mode of Sox PTF by combining extensive molecular simulations and physiochemistry approaches, along with DNA footprinting techniques. As a result, we show that when Sox consensus DNA is located at the solvent-facing DNA strand, Sox binds to the compact nucleosome without imposing any significant conformational changes. We also reveal that the base-specific Sox:DNA interactions (base reading) and Sox-induced DNA changes (shape reading) are concurrently required for sequence-specific nucleosomal DNA recognition. Among three different nucleosome positions located on the positive DNA arm, a sequence-specific reading mechanism is solely satisfied at the superhelical location 2 (SHL2). While SHL2 acts transparently for solvent-facing Sox binding, among the other two positions, SHL4 permits only shape reading. The final position, SHL0 (dyad), on the other hand, allows no reading mechanism. These findings demonstrate that Sox-based nucleosome recognition is essentially guided by intrinsic nucleosome properties, permitting varying degrees of DNA recognition.

Here, we presents our raw data as well as with our analysis scripts. The folder organization is as follow:

**Raw_Data**: P-RMSD (Martin, A.C.R.), minor groove (Lu and Olson,2003) and interaction files (Rodrigues _et al._, 2019)

**Scripts**: Required scripts to calculate the P-RMSD, minor groove values, interaction results and to plot the graphs

**Trajectories**: Molecular dynamics simulations files of 601-SHL024 and Sox11 at dyad, SHL0 and SHL2

**Movies**: Demonstaration of the nuclesome recognition process by Sox11 at SHL0, SHL2 and SHL4


### References:
1. P-RMSD fitting is performed using the McLachlan algorithm (McLachlan, A.D., 1982 'Rapid Comparison of Protein Structures', Acta Cryst A38, 871-873) as implemented in the program ProFit (Martin, A.C.R., http://www.bioinf.org.uk/software/profit/).
2. Lu, Xiang‐Jun, and Wilma K. Olson. 3DNA: a software package for the analysis, rebuilding and visualization of three‐dimensional nucleic acid structures. Nucleic acids research 31.17 (2003): 5108-5121. https://x3dna.org
3. Rodrigues,J., Valentine,C. and Jimenez,B. (2019) JoaoRodrigues/interfacea: first beta version of the API, https://github.com/JoaoRodrigues/interfacea

### Contact
For questions: ezgi.karaca@ibg.edu.tr
