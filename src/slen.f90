!< StringiFor `slen` test.
program slen
!-----------------------------------------------------------------------------------------------------------------------------------
!< StringiFor `slen` test.
!-----------------------------------------------------------------------------------------------------------------------------------
use, intrinsic :: iso_fortran_env, only : stdout => output_unit
use stringifor, only : string
!-----------------------------------------------------------------------------------------------------------------------------------

!-----------------------------------------------------------------------------------------------------------------------------------
implicit none
type(string) :: astring        !< A string.
logical      :: test_passed(2) !< List of passed tests.
!-----------------------------------------------------------------------------------------------------------------------------------

!-----------------------------------------------------------------------------------------------------------------------------------
test_passed = .false.

astring = 'Hello World!   '

write(stdout, "(A)") 'Original: "'//astring//'"'
test_passed(1) = astring%slen()==len('Hello World!   ')
write(stdout, "(A,I2)") 'Len: ', astring%slen()

test_passed(2) = astring%slen_trim()==len_trim('Hello World!   ')
write(stdout, "(A,I2)") 'Len_trim: ', astring%slen_trim()

write(stdout, "(A,L1)") new_line('a')//'Are all tests passed? ', all(test_passed)
stop
!-----------------------------------------------------------------------------------------------------------------------------------
endprogram slen