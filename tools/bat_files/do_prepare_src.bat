set outsrc_dir=%1
set defs_h_file=%ROOT_DIR%\defs.h

echo **************************************************************************************
echo                                                                           copy sources 
echo **************************************************************************************
mkdir %outsrc_dir%
xcopy /Q /Y /E %SRC_DIR%\*.* %outsrc_dir%\*.*

echo **************************************************************************************
echo                                                                    PREPARE defs.h file 
echo **************************************************************************************
echo #// >%defs_h_file%
rem echo #defword VERSION_TEXT "Amaze Camera, v.%VERSION%">>%defs_h_file%
echo #define VERSION_TEXT "Amaze Camera, v.%VERSION%">>%defs_h_file%
for %%x in (%2 %3 %4 %5 %6 %7 %8 %9) do (
        echo OUT %%~x to defs.h
	echo %%~x>>%defs_h_file%
)

echo **************************************************************************************
echo                                                                     PREPROCESS sources 
echo **************************************************************************************
rem  
for /R %outsrc_dir% %%f in (*.smali *.xml "updater-script.*") do (
        echo %%~nf%%~xf
	%PREPROCESSOR_DIR%\xpp %TMP_DIR%\tmp.tmp %%f >nul
	copy /Y %TMP_DIR%\tmp.tmp %%f >nul
)

for /R %outsrc_dir% %%f in ("updater-script.*") do (
	%DOS2UNIX_DIR%\dos2unix.exe -ascii -n %%f %TMP_DIR%\tmp.tmp
	copy /Y %TMP_DIR%\tmp.tmp %%f >nul
)

del /F /Q %TMP_DIR%\tmp.tmp