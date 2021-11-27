'''
This file lists all the zipped files in the current folder and 
extracts them to a folder called "Airlines_Extracted"
'''

import zipfile
import glob
from tqdm import tqdm

zip_files = glob.glob('*.zip')

for zipped_file in tqdm(zip_files):
    # print(zipped_file)
    with zipfile.ZipFile(zipped_file, 'r') as zip_ref:
        zip_ref.extractall('./Airlines_Extracted/')