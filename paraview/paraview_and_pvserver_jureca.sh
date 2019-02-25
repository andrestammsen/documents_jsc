
#TODO		TRY IT AGAIN :):)

# README:	script to start paraview and pvserver on jureca

#!/bin/sh

# unload all modules / clean environment
module --force purge

# allow older stages to be loaded
module use /usr/local/software/jureca/OtherStages

# load earlier stage (new version needs to be compiled again/library problems)
module load Stages/2016a

# load all necessary modules
module load Intel
module load IntelMPI
module load ParaView/4.4.0

# unload Mesa (CHECK what it is !)
module unload Mesa

# run paraview GUI
vglrun paraview &

# this environment variable caused problems somehow
unset SLURM_SPANK__SLURM_SPANK_OPTION_visspank_start_xserver

# start pvserver script written by JHG => starts 12 servers
source /usr/local/jsc/etc/xdg/scripts/srun-pvserver-vis.sh


