rem
rem usage: static-analysis top-level-dir
rem

setlocal

if not [%1]==[] goto :get_args
echo "Insufficient arguments"
exit /b 1

:get_args

set "top_dir=%1"
set "report=2> %1\errs.txt"

set "cmd=C:\Program Files\Cppcheck\cppcheck"
set "opt=--enable=all --error-exitcode=1 --inline-suppr"

"%cmd%" %opt% "%top_dir%" %report%
