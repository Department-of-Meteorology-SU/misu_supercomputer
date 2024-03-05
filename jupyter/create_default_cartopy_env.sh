#!/bin/bash

module load Mambaforge/23.3.1-1-hpc1
mamba create -y -n py09_cartopy -c conda-forge \
    python=3.9 `# cartopy conflicts with python > 3.9` \
    dynaconf `# for organizing projects` \
    jupyter \
    dask \
    netcdf4 \
    h5netcdf \
    numpy \
    scipy \
    xarray \
    pandas \
    proplot \
    cartopy \
    'matplotlib<3.5' `# proplot conflicts with matplotlib > 3.4` \
    cmasher \
    colorcet \
    colormaps `# holds most colormaps out there` \
    black # a formatter for python code
