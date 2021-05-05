FC=gfortran
FFLAGS=-O3 -Wall -Wextra -std=f2008 -fdefault-real-8
SRC=quad_solver.f90 main.f90 solver_test.f90
OBJ=${SRC:.f90=.o}

%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

solver: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)

test: $(OBJ)
	$(FC) $(FFLAGS) -o $@ solver_test.o quad_solver.o

clean:
	rm *.o *.mod solver test