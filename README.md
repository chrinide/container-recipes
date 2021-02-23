# Container Recipes for Electronic Structure Theory #

This repo contains container recipes to build various electronic structure
codes.

Singularity 3.6.4 is used, however the recipes should be readily adaptable to
Docker, with all the usual caveats about MPI in Docker.  For more information
about Singularity containers, please visit the Singularity website at
<https://www.sylabs.io/singularity/>

## Base Images #

Recipes to generate base containers with relevant math libraries pre-installed
are located in the `base` folder.

## Code Images ##

Recipes to build the following electronic structure codes are provided:

* FHI-aims, located in the `FHI-aims` folder.
* BerkeleyGW, located in the `BerkeleyGW` folder.
* Quantum ESPRESSO, located in the `Quantum-ESPRESSO` folder.

Each folder contains subfolders corresponding to the base image which will be
bootsrapped off of.  Within each of these subfolders is a Singularity definition
file and, if needed, additional files used during the build process.  Containers 
are built in the usual way (`sudo singularity build ...`). 

## FHI-aims ##

Because FHI-aims is a proprietary code, you will be required to specify your
user credientials to clone the FHI-aims git repo while the container is being
built.  If a personal access token is requested, log into the git repo, visit
[Access Tokens](https://aims-git.rz-berlin.mpg.de/profile/personal_access_tokens),
select `api` under Scopes and generate the token.
