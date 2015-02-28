@echo off

::build & install
idris --clean Control.Unicode.ipkg
idris --install Control.Unicode.ipkg

::test
cd test
bash runtests.sh

pause
