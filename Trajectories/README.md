# Molecular Dynamics Simulations Protocol

MD simulations were performed by using the GROMACS simulation package (Gromacs 2019 and Gromacs 5.1.4) under the effect of Amber Parmbsc1 force field. We used TIP3P as the water model. The NaCl concentration was kept as 0.15 M. A dodecahedron simulation box was used, while having a minimum distance of 12 Å between the biological molecule and the edges of simulation box. The temperature was kept at 310K throughout the simulation. We performed two parallel simulations for the free nucleosome (Sox binding motif inserted at dyad, SHL2 and SHL4, pdb id: 3lz0), the DNA:Sox11 complex (pdb id: 6t78), and the Sox11-bound nucleosome structures, i.e., Sox11:dyad, Sox11:SHL2, and Sox11:SHL4. 

Before running the simulations, complexes were minimized by using the steepest descent algorithm in the vacuum. Then, they are solvated in TIP3P water and concentration was kept at 0.15 M by adding NaCl to the system (460 Na+, 240 Cl- for free nucleosome; 49 Na+, 38 Cl- for Sox11:DNA; 427 Na+, 218 Cl- for Sox11:dyad; 438 Na+ and 229 Cl- for Sox11:SHL2; and 477 Na+ and 268 Cl- for Sox11:SHL4). The number of ions were added to the topology files accordingly and then the solvated systems were minimized. The systems were relaxed for 20 ps at 310K under the constant volume. To generate replicas, random seeds were changed. Then, another 20 ps molecular dynamics simulations were performed under constant pressure at 1 bar. Finally, position restrains were released gradually from 1000 to 100, 100 to 10 and 10 to 0. The integration time step was set to 2 fs. The coordinate files were recorded in every 0.5 ns for the analysis. 

The coordinate files are presented as pdb files in drive link for 601-SHL024 (free nucleosome), DNA:Sox11, Nucleosome:Sox at dyad, Nucleosome:Sox at SHL2 and Nucleosome:Sox at SHL4. 

[![DRIVELINK](http://img.shields.io/badge/DriveLink-B31B1B.svg)](https://drive.google.com/drive/folders/1xCAvVKn4FMwJXaiOfce78pRSTEbfw83e?usp=sharing)

| Name | Simulation time for each independent run(ns) |
| --- | :---: |
| 601-SHL024 (free nucleosome) | 1000 |
| DNA:Sox11 | 500 |
| Sox11:dyad | 500 |
| Sox11:SHL2 | 500 |
| Sox11:SHL4 | 500 |
