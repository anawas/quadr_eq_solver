!
! Provides functions to solve a quadratic equation given by the coefficients
!
module quad_solver
    implicit none

    public :: discriminant, solve

    contains
    ! Calculates and returns the discriminant
    real function discriminant(coeffs)
        real, intent(in) :: coeffs(3)

        discriminant = coeffs(2)**2 - 4*coeffs(1)*coeffs(3)
    end function discriminant

    ! Solves the quadratic equation, if discriminant >= 0
    ! The result is in argument result
    ! Returns the descriminant
    real function solve(coeffs, result)
    implicit none
    real, intent(in) :: coeffs(3)
    real :: D, result(2)

    D = discriminant(coeffs)

    if (D < 0) then
        solve = D
    else
        result(1) = (-coeffs(2) + sqrt(D)) / (2.0 * coeffs(1))
        result(2) = (-coeffs(2) - sqrt(D)) / (2.0 * coeffs(1))
        solve = D
    end if
    end function solve

end module quad_solver