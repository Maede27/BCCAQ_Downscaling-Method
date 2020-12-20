# Compute-Canada-Graham-commands

Install PuTTY to connect to the Compute Canada (Graham Server)
Copy graham.computecanada.ca to Host Name or IP address in PuTTY, then select SSH and open 
After connecting to CC server, navigate to home/mehdisam
To install the R packages, you need to load "netcdf" module in addition to gcc and R: 
module load gcc r netcdf

Some R packages like "pbdNCDF4" are removed from the official mirrors and you need to download the sources files first:
wget https://cran.r-project.org/src/contrib/Archive/pbdNCDF4/pbdNCDF4_0.1-4.tar.gz

Now run R : 
R

In R environment:
> install.packages("ncdf4")
> install.packages("/home/mehdisam/pbdNCDF4_0.1-4.tar.gz", repos = NULL, type="source")


