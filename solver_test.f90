program solver_test
    use quad_solver
    implicit none

    real :: coeffs(3), result(2)
    real :: ret 

    ! coefficients of the equation. It is
    ! coeff_1*x**2 + coeff_2*x + coeff_3
    coeffs(1) = 4.5
    coeffs(2) = 7.0
    coeffs(3) = -2.0

    ! ret has the discriminant. If ret >= 0 the result
    ! is in array result
    ret = solve(coeffs, result)
    if (ret < 0) then
        print *, 'This equation has no solution'
    else
        print '("solution: x1=", f10.5, " x2=", f10.5)', result
    end if
end program solver_test