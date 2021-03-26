set(TARGET_NAME aims.x CACHE STRING "")

###############
# Basic Flags #
###############
set(CMAKE_Fortran_COMPILER mpifort CACHE STRING "")
set(CMAKE_Fortran_FLAGS "-O2 -ffree-line-length-none" CACHE STRING "")
set(CMAKE_EXE_LINKER_FLAGS "-pthread" CACHE STRING "")
set(USE_SCALAPACK ON CACHE BOOL "")
set(Fortran_MIN_FLAGS "-O0 -ffree-line-length-none" CACHE STRING "")
set(LIB_PATHS "$ENV{LAPACK_BASE}/lib64 $ENV{SCALAPACK_BASE}/lib" CACHE STRING "")
set(LIBS "scalapack openblas" CACHE STRING "")

###############
# C,C++ Flags #
###############
set(CMAKE_C_COMPILER gcc CACHE STRING "")
set(CMAKE_C_FLAGS "-O2 -DNDEBUG -funroll-loops" CACHE STRING "")
