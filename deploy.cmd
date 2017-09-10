setlocal
set PATH=%ProgramFiles(x86)%\nodejs\6.2.2;%ProgramFiles(x86)%\npm\3.9.5;%PATH%

echo "installing build dependencies"
call npm install
echo "building..."
call grunt
echo "copy to deployment target"
call robocopy bin\ ..\wwwroot\ /E /NFL /NJH /NJS /nc /ns /np
echo "installing server dependencies"
call npm install express --prefix ../wwwroot/

endlocal