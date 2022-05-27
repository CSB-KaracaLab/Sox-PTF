## Calculation of interactions between Sox and DNA and ploting selected interaction graphs


Molecular interaction profiles of complexes were calculatedby using the Interfacea Python library (https://github.com/JoaoRodrigues/interfacea).
How to run the Interfacea over the simulation are explained [Scripts/Interactions/Interfacea](https://github.com/BurcuOzden/Sox-PTF/tree/main/Scripts/Interactions/Interfacea).
The output files are deposited under [Raw_Data/Interactions/Interfacea_Results/](https://github.com/BurcuOzden/Sox-PTF/tree/main/Raw_Data/Interactions/Interfacea_Results).

From these interactions, we focused on specific Sox-DNA interactions that are important for specific binding of Sox to DNA. They are 
1. hydrophobic interactions of Sox Phe56 and Met57 with DNA and 
2. base specific H bonds of Sox Arg51, Asn54 and Tyr118 with DNA.

So, we selected these interactions from Interfacea outputs by using the scripts given under [Scripts/Interactions/Interaction_Selection/](https://github.com/BurcuOzden/Sox-PTF/tree/main/Scripts/Interactions/Interaction_Selection).

These selected interactions are saved as selected interactions in [Raw_Data/Interactions/Selected_Interactions/](https://github.com/BurcuOzden/Sox-PTF/tree/main/Raw_Data/Interactions/Selected_Interactions) and used in barcode plots.

To visualize these interaction, we plotted barcode graphs as below by using [Interaction-plots.ipnyb](https://github.com/BurcuOzden/Sox-PTF/blob/main/Scripts/Interactions/Interaction-plots.ipynb). 
for Sox:DNA (reference structure, pdb id: 6t78), Sox:dyad, Sox:SHL2 and Sox:SHL4, respectively.

<img src="https://user-images.githubusercontent.com/64282221/170729358-a8c58d17-82c3-4a47-a861-ede579ba5436.png" width="200" height="300"> <img src="https://user-images.githubusercontent.com/64282221/170728989-4be42eeb-4965-4110-9ecb-f92cb5d1bdc6.png" width="200" height="300">
<img src="https://user-images.githubusercontent.com/64282221/170730072-f369c8ea-1220-43ff-988a-6f96b15db6d5.png" width="200" height="300"> <img src="https://user-images.githubusercontent.com/64282221/170729566-e7bda54e-ef37-4404-b21b-500ae99412d3.png" width="200" height="300"> 
