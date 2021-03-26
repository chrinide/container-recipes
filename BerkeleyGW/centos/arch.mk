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
FFTWBASE     = /my_packages/fftw3/
FFTWLIB      = ${FFTWBASE}/lib/libfftw3.a ${FFTWBASE}/lib/libfftw3_omp.a
FFTWINCLUDE  = ${FFTWBASE}/include/

LAPACKBASE   = /my_packages/openblas/
LAPACKLIB    = ${LAPACKBASE}/lib64/libopenblas.a

SCALAPACKBASE = /my_packages/scalapack/
SCALAPACKLIB  = ${SCALAPACKBASE}/lib/libscalapack.a

# HDF Library
HDF5BASE     = /my_packages/hdf5/
HDF5LIB      = ${HDF5BASE}/lib/libhdf5hl_fortran.a \
	       ${HDF5BASE}/lib/libhdf5_hl.a \
	       ${HDF5BASE}/lib/libhdf5_fortran.a \
	       ${HDF5BASE}/lib/libhdf5.a \
	       -ldl
HDF5INCLUDE  = ${HDF5BASE}/include/

#need to export MPIEXEC=/usr/bin/mpirun if this is not default in `which mpiexec`
TESTSCRIPT = make check-parallel
