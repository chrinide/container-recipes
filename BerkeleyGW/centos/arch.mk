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
FFTWLIB      = ${FFTW3_BASE}/lib/libfftw3.a ${FFTW3_BASE}/lib/libfftw3_omp.a
FFTWINCLUDE  = ${FFTW3_BASE}/include/

LAPACKLIB    = ${LAPACK_BASE}/lib64/libopenblas.a

SCALAPACKLIB  = ${SCALAPACK_BASE}/lib/libscalapack.a

# HDF Library
HDF5LIB      = ${HDF5_BASE}/lib/libhdf5hl_fortran.a \
	       ${HDF5_BASE}/lib/libhdf5_hl.a \
	       ${HDF5_BASE}/lib/libhdf5_fortran.a \
	       ${HDF5_BASE}/lib/libhdf5.a \
	       -ldl
HDF5INCLUDE  = ${HDF5_BASE}/include/

#need to export MPIEXEC=/usr/bin/mpirun if this is not default in `which mpiexec`
TESTSCRIPT = make check-parallel
