COMPFLAG  = -DINTEL
PARAFLAG  = -DMPI -DOMP
MATHFLAG  = -DUSESCALAPACK -DUNPACKED -DUSEFFTW3 -DUSEMR3 -DHDF5
# Only uncomment DEBUGFLAG if you need to develop/debug BerkeleyGW.
# The output will be much more verbose, and the code will slow down by ~20%.
#DEBUGFLAG = -DDEBUG

FCPP    = cpp -C -nostdinc
F90free = mpiifort -free -qopenmp -ip -no-ipo
LINK    = mpiifort -qopenmp
FOPTS   = -O3 -fp-model source
FNOOPTS = -O2 -fp-model source -no-ip
MOD_OPT = -J 
INCFLAG = -I

C_PARAFLAG  = -DPARA
CC_COMP = mpiicpc
C_COMP  = mpiicc
C_LINK  = mpiicpc
C_OPTS  = -O3 -ip -no-ipo -qopenmp
C_DEBUGFLAG =

REMOVE  = /bin/rm -f

# Math Libraries
#
MKLPATH      = $(MKLROOT)/lib/intel64

FFTWLIB      =	-Wl,--start-group \
		$(MKLPATH)/libmkl_intel_lp64.a \
		$(MKLPATH)/libmkl_intel_thread.a \
		$(MKLPATH)/libmkl_core.a \
		-Wl,--end-group -liomp5 -lpthread -lm -ldl
FFTWINCLUDE  = $(MKLROOT)/include/fftw


LAPACKLIB    = -Wl,--start-group \
		$(MKLPATH)/libmkl_intel_lp64.a \
		$(MKLPATH)/libmkl_intel_thread.a \
		$(MKLPATH)/libmkl_core.a \
		$(MKLPATH)/libmkl_blacs_intelmpi_lp64.a \
		-Wl,--end-group -liomp5 -lpthread -lm -ldl
SCALAPACKLIB = $(MKLPATH)/libmkl_scalapack_lp64.a

# HDF Library
HDF5LIB      = -lhdf5hl_fortran -lhdf5_hl -lhdf5_fortran -lhdf5 -ldl
HDF5INCLUDE  = /usr/local/include

#need to export MPIEXEC=/usr/bin/mpirun if this is not default in `which mpiexec`
TESTSCRIPT = make check-parallel
