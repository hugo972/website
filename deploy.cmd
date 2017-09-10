setlocal
set PATH=D:\Program Files (x86)\nodejs\6.2.2;D:\Program Files (x86)\npm\3.9.5;%PATH%

call npm install
call grunt
echo "copy files"
call robocopy bin\ ..\wwwroot\ /E /NFL /NJH /NJS /nc /ns /np
echo "installing dependencies"
call npm install --prefix ../wwwroot/

endlocal