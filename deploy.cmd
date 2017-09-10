setlocal
set PATH=%ProgramFiles(x86)%\nodejs\6.2.2;%ProgramFiles(x86)%\npm\3.9.5;%PATH%

echo --------------------------------------
echo installing build dependencies
echo --------------------------------------
echo.
call npm install
echo --------------------------------------
echo building
echo --------------------------------------
echo.
call grunt
echo --------------------------------------
echo copying to deployment target
echo --------------------------------------
echo.
call robocopy bin\ ..\wwwroot\ /E /NFL /NJH /NJS /nc /ns /np
echo --------------------------------------
echo installing server dependencies
echo --------------------------------------
echo.
call npm install express --prefix ../wwwroot/

endlocal