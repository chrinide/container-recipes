COMPFLAG  = -DGNU
PARAFLAG  = -DMPI -DOMP
MATHFLAG  = -DUSESCALAPACK -DUNPACKED -DUSEFFTW3 -DUSEMR3 -DHDF5
# Only uncomment DEBUGFLAG if you need to develop/debug BerkeleyGW.
# The output will be much more verbose, and the code will slow down by ~20%.
#DEBUGFLAG = -DDEBUG

FCPP    = cpp -C -nostdinc
F90free = mpif90 -ffree-form -ffree-line-length-none -std=gnu -fopenmp
LINK    = mpif90 -fopenmp
FOPTS   = -O3
FNOOPTS = $(FOPTS)
MOD_OPT = -J
INCFLAG = -I

C_PARAFLAG  = -DPARA
CC_COMP  = mpic++ -Wall -pedantic-errors -std=c++0x
C_COMP  = mpicc -Wall -pedantic-errors -std=c99
C_LINK  = mpic++
C_OPTS  = -O3
C_DEBUGFLAG =

REMOVE  = /bin/rm -f

# Math Libraries
#
FFTWLIB      = -lfftw3 -lfftw3_omp
FFTWINCLUDE  = /usr/local/include
LAPACKLIB    = -lopenblas
BLACSDIR     =
BLACS        =
SCALAPACKLIB = -lscalapack

# HDF Library
HDF5LIB      = -lhdf5hl_fortran -lhdf5_hl -lhdf5_fortran -lhdf5 -ldl
HDF5INCLUDE  = /usr/local/include

#need to export MPIEXEC=/usr/bin/mpirun if this is not default in `which mpiexec`
TESTSCRIPT = make check-parallel
