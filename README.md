# DAESIM_preprocess
Harvesting environmental forcing data for running the Dynamic Agro-Ecosystem Simulator (DAESIM). 

# Available variables
Specifically, this repo downloads the following variables.
- ozwald_8day: 
- ozwald_daily:
- silo_daily:
- slga_soils:
- terrain_tiles:
- topography:

# Available parameters
The parameters for each function are mostly the same with a few differences.
- ozwald_8day: 
- ozwald_daily:
- silo_daily:
- slga_soils:
- terrain_tiles:
- topography:

# Parameter Descriptions
This is the meaning of each parameter.

# Usage
pip install DAESIM_preprocess
from DAESIM_preprocess import ozwald_daily  # (or whichever function)
variables = [...]
lat, lon, buffer = ...
ozwald_daily(variables, lat, lon, buffer)

# Jupyter Notebook Examples
Here are some [example notebooks](https://github.com/ChristopherBradley/DAESIM_preprocess/tree/main/notebooks). 
These notebooks can all be run directly in [Google Colab](https://colab.google/).
1.
2.
3.

# Running Locally
1. Download and install Miniconda from https://www.anaconda.com/download/success
2. Add the miniconda filepath to your ~/.zhrc, e.g. export PATH="/opt/miniconda3/bin:$PATH" 
3. brew install gdal
4. git clone https://github.com/ChristopherBradley/DAESIM_preprocess.git
5. cd DAESIM_preprocess
6. conda env create -f environment.yml
7. conda activate DAESIM_preprocess
8. jupyter lab (to run the examples like on google colab)

# Running via command line
After completely steps 1-7 of running locally, you can run each of the scripts directly via the command line.
python ozwald_8day ...
python ozwald_daily ...
python silo_daily ...
python slga_soils ...
python terrain_tiles ...
python topography ...

# Testing
1. To run all the tests, just run 'pytest' from inside the repo
2. To run a specific tests, use ...
3. Sometimes the API's can be a bit temperamental, especially the SLGA, so may need to wait a while and try the test again.

# Uploading to pypi
1. python3 -m build
2. twine upload dist/*
3. Enter the API token
4. Check it out at https://pypi.org/project/DAESIM-preprocess

# References
Each data source is referenced in the source code, jupyter notebooks, and there is a complete list here:
...