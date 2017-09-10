setlocal
set PATH=D:\Program Files (x86)\nodejs\6.2.2;D:\Program Files (x86)\npm\3.9.5;%PATH%

call npm install
call grunt
call robocopy bin\ ..\wwwroot\ /E /NFL /NJH /NJS /nc /ns /np
call npm install --prefix ../wwwroot/

endlocal