Main TODOs:

* Add testing to Quantum ESPRESSO container
* Fix metadata in headers
* Stop using local image bootstrapping for code containers
* Upload to Singularity Hub

Would-Be-Nice:

* Figure out why the OpenMP version of FFTW3 isn't found when
  installing Quantum ESPRESSO with OpenMP
* Figure out why RT-TDDFT runs are crashing in FHI-aims test
  suite
* Fix failing BerkeleyGW regression runs
