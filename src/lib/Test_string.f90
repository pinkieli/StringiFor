program TEST_STRING

    use stringifor_string_t

    implicit none

    type(string) :: str1 
    ! INTEGER(KIND=8) :: I 
    ! CHARACTER(len=:), ALLOCATABLE :: str2 

    str1 = '1'
    ! I = ICHAR(str1)
    print *, ichar(str1), iachar(str1)
     
end program TEST_STRING