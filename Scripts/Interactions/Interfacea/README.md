## Calculation of interaction profiles

Molecular interaction profiles are calculated by using the Interfacea Python library (https://github.com/JoaoRodrigues/interfacea). 
You can download the library by using the given link. Then, you can use contact_type.py file to calculate the ionic and hydrogen bonds and hydrophobic interactions.
Usage of the script:
```
python contact_type.py complex.pdb > output_file_name
```
If you want to calculate the interactions recursively for many files, use compute_interfacea.csh script. This script produces output files with the .interfacea extension.
To use this script put contact_type.py and compute_interfacea.csh files into the folder you want to compute the interactions and then:

```
./compute_interfacea.csh
```

