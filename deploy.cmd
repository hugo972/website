set NODE_EXE=D:\Program Files (x86)\node\6.2.2\node.exe
set NPM_CMD=D:\Program Files (x86)\npm\3.9.5\npm.cmd

"%NPM_CMD%" install
grunt
"%NPM_CMD%" start