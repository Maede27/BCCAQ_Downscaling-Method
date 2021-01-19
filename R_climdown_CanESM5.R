library(ncdf4)
library(ClimDown)
GCM<-"/home/najafim/scratch/lake_winnipeg/GCMs/Test_Obs_GCM/Test_GCM_1950-2100.nc
Obs<-"/home/najafim/scratch/lake_winnipeg/GCMs/Test_Obs_GCM/Test_Obs_newLon_sameVar_sameUnit.nc"
GCM_open<-nc_open(GCM)
print(GCM_open)

bccaq.netcdf.wrapper(GCM, Obs, "pr_CanESM5_downscaled.nc", varname = "pr")

