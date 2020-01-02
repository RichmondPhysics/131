@echo off
echo 'hello world'
if exist .\Phys131 del /Q .\Phys131\*.*
if not exist .\Phys131 mkdir .\Phys131
pushd ..
FOR /F "delims=" %%a IN (.\make_phys131\file_list.txt) DO COPY "%%~a" .\make_phys131\Phys131
popd
pause