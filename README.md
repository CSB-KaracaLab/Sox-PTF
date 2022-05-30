![github_title](https://user-images.githubusercontent.com/64282221/162792508-e10eada6-6a7f-4adc-bf41-3226b6720758.png)

[![DOI:10.1101/2021.12.07.471700](http://img.shields.io/badge/DOI-10.1101/2021.12.07.471700-B31B1B.svg)](https://doi.org/10.1101/2021.12.07.471700)

Pioneer transcription factors (PTFs) directly bind to the nucleosomally organized DNA to stimulate vital cellular processes. Up to date, several studies have been carried out to dissect the interaction landscape between PTFs and chromatin. However, the precise invasion mechanism of chromatin by PTFs is yet to be resolved. Expanding on this, we combine extensive molecular dynamics simulations and DNA footprinting techniques to explore the universal binding mode of Sox PTF by concentrating on three super helical locations (SHL0 (dyad), SHL+2, SHL+4). We reveal that the base-specific Sox-DNA interactions (base reading) and the Sox-induced DNA changes (shape reading) are concurrently required for sequence-specific DNA recognition. Among different nucleosomal positions, such a specific reading mechanism is satisfied solely at superhelical location 2 (SHL2). While SHL2 acts transparently to Sox binding, SHL4 permits only shape reading, and dyad allows no reading mechanism. For this, we perform compherensive computational study by combining integrative modeling and molecular dynamics simulations. Here, we presents our raw data as well as with our analysis scripts. The folder organization is as follow:

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
