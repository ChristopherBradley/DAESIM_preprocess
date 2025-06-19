# Testing/demo-ing all of the main functions using the command line

mkdir -p tmpdir
mkdir -p outdir

# Basic tests for quickly checking all the API's
# Note that any of these arguments can be strings (since they get interpreted as strings anyway), but I'm just making lat a string to handle the minus symbol
python src/DAESIM_preprocess/ozwald_daily.py --variable Uavg --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable Ssoil --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/terrain_tiles.py --lat '-34.3890427' --lon 148.469499 --buffer 0.005 --outdir outdir --stub TEST --tmpdir tmpdir --tile_level 14

python src/DAESIM_preprocess/topography.py --outdir outdir --stub TEST --smooth --sigma 5 --plot

python src/DAESIM_preprocess/slga_soils.py --variable Clay --lat '-34.3890427' --lon 148.469499 --buffer 0.005 --outdir tmpdir --stub TEST --depth 5-15cm

python src/DAESIM_preprocess/silo_daily.py --variable radiation --lat '-34.3890427' --lon 148.469499 --buffer 0.1 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot


# More comprehensive tests for ozwald_daily: Every variable --3x buffers --all years --with or without plotting
python src/DAESIM_preprocess/ozwald_daily.py --variable Tmax --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2021 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_daily.py --variable Tmin --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2021 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_daily.py --variable Pg --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_daily.py --variable Uavg --lat '-34.3890427' --lon 148.469499 --buffer 0 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_daily.py --variable VPeff --lat '-34.3890427' --lon 148.469499 --buffer 0 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_daily.py --variable Ueff --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_daily.py --variable kTavg --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_daily.py --variable kTeff --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_daily.py --variable Ueff --lat '-34.3890427' --lon 148.469499 --buffer 0 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_daily.py --variable Ueff --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2000 --end_year 2030 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_daily.py --variable Ueff --lat '-34.3890427' --lon 148.469499 --buffer 0.1 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir 


# More comprehensive tests for ozwald_8day: All variable --2x buffers --multiple years --with or without plotting
python src/DAESIM_preprocess/ozwald_8day.py --variable Ssoil --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2021 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable Ssoil --lat '-34.3890427' --lon 148.469499 --buffer 0 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable Ssoil --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2024 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable Ssoil --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2024 --outdir outdir --stub TEST --tmpdir tmpdir

python src/DAESIM_preprocess/ozwald_8day.py --variable BS --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable EVI --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable FMC --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable NPV --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable OW --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable PV --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable SN --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable GPP --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable LAI --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable NDVI --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/ozwald_8day.py --variable Qtot --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot


# More comprehensive tests for terrain tiles: 3x buffers --3x tile levels --with or without interpolation
python src/DAESIM_preprocess/terrain_tiles.py --lat '-34.3890427' --lon 148.469499 --buffer 0 --outdir outdir --stub TEST --tmpdir tmpdir --tile_level 14

python src/DAESIM_preprocess/terrain_tiles.py --lat '-34.3890427' --lon 148.469499 --buffer 0.1 --outdir outdir --stub TEST --tmpdir tmpdir --tile_level 9

python src/DAESIM_preprocess/terrain_tiles.py --lat '-34.3890427' --lon 148.469499 --buffer 1 --outdir outdir --stub TEST --tmpdir tmpdir --tile_level 4

python src/DAESIM_preprocess/terrain_tiles.py --lat '-34.3890427' --lon 148.469499 --buffer 0.005 --outdir outdir --stub TEST --tmpdir tmpdir --tile_level 14 --just_download


# More comprehensive tests for topography: different sigma --with or without smoothing, verbose and plot
python src/DAESIM_preprocess/topography.py --outdir outdir --stub TEST --plot

python src/DAESIM_preprocess/topography.py --outdir outdir --stub TEST --smooth --sigma 10 --plot

python src/DAESIM_preprocess/topography.py --outdir outdir --stub TEST --smooth --sigma 5 --plot

python src/DAESIM_preprocess/topography.py --outdir outdir --stub TEST --smooth --sigma 5 


# More comprehensive tests for slga soils: 2x buffers, every variable and depth
python src/DAESIM_preprocess/slga_soils.py --variable Clay --lat '-34.3890427' --lon 148.469499 --buffer 0 --outdir tmpdir --stub TEST --depth 5-15cm

python src/DAESIM_preprocess/slga_soils.py --variable Clay --lat '-34.3890427' --lon 148.469499 --buffer 0.005 --outdir tmpdir --stub TEST --depth 15-30cm

python src/DAESIM_preprocess/slga_soils.py --variable Clay --lat '-34.3890427' --lon 148.469499 --buffer 0.005 --outdir tmpdir --stub TEST --depth 30-60cm

python src/DAESIM_preprocess/slga_soils.py --variable Clay --lat '-34.3890427' --lon 148.469499 --buffer 0.005 --outdir tmpdir --stub TEST --depth 60-100cm

python src/DAESIM_preprocess/slga_soils.py --variable Silt --lat -34.3890427 --lon 148.469499 --buffer 0.005 --outdir tmpdir --stub TEST --depth 5-15cm

python src/DAESIM_preprocess/slga_soils.py --variable Sand --lat -34.3890427 --lon 148.469499 --buffer 0.005 --outdir tmpdir --stub TEST --depth 5-15cm

python src/DAESIM_preprocess/slga_soils.py --variable pH_CaCl2 --lat -34.3890427 --lon 148.469499 --buffer 0.005 --outdir tmpdir --stub TEST --depth 5-15cm

python src/DAESIM_preprocess/slga_soils.py --variable Bulk_Density --lat -34.3890427 --lon 148.469499 --buffer 0.005 --outdir tmpdir --stub TEST --depth 5-15cm

python src/DAESIM_preprocess/slga_soils.py --variable Available_Water_Capacity --lat -34.3890427 --lon 148.469499 --buffer 0.005 --outdir tmpdir --stub TEST --depth 5-15cm

python src/DAESIM_preprocess/slga_soils.py --variable Effective_Cation_Exchange_Capacity --lat -34.3890427 --lon 148.469499 --buffer 0.005 --outdir tmpdir --stub TEST --depth 5-15cm

python src/DAESIM_preprocess/slga_soils.py --variable Total_Nitrogen --lat -34.3890427 --lon 148.469499 --buffer 0.005 --outdir tmpdir --stub TEST --depth 5-15cm

python src/DAESIM_preprocess/slga_soils.py --variable Total_Phosphorus --lat -34.3890427 --lon 148.469499 --buffer 0.005 --outdir tmpdir --stub TEST --depth 5-15cm


# More comprehensive tests for SILO: different buffer, with or without plotting 
python src/DAESIM_preprocess/silo_daily.py --variable radiation --lat '-34.3890427' --lon 148.469499 --buffer 0 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir --plot

python src/DAESIM_preprocess/silo_daily.py --variable radiation --lat '-34.3890427' --lon 148.469499 --buffer 0.01 --start_year 2020 --end_year 2020 --outdir outdir --stub TEST --tmpdir tmpdir 


# Currently can't run daesim_forcing directly from the command line because it expects multiple variables to be in the same netcdf