import interfacea as ia
import pandas as pd

# below given lines are there to print the whole dataframe content
pd.set_option('display.max_rows', None)
pd.set_option('display.max_columns', None)
pd.set_option('display.width', None)
pd.set_option('display.max_colwidth', None)

mol = ia.read('complex.pdb')

analyzer = ia.InteractionAnalyzer(mol)
analyzer.get_hydrophobic()
analyzer.get_hbonds()
analyzer.get_ionic()

print(analyzer.itable._table) 
