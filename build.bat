@echo off

set VERSION=0.10

set ROOT_DIR=%CD%
set SRC_DIR=%ROOT_DIR%\src
set OUT_DIR=%ROOT_DIR%\out
set TOOLS_DIR=%ROOT_DIR%\tools
set BAT_DIR=%TOOLS_DIR%\bat_files
set ZIP_DIR=%TOOLS_DIR%\7z
set FNR_DIR=%TOOLS_DIR%\fnr
set SIGNAPK_DIR=%TOOLS_DIR%\signapk
set APKTOOL_DIR=%TOOLS_DIR%\apktool
set TMP_DIR=%ROOT_DIR%\tmp
set PREPROCESSOR_DIR=%TOOLS_DIR%\xpp
set DOS2UNIX_DIR=%TOOLS_DIR%\dos2unix

call clean.bat

call %BAT_DIR%\config.bat
call %BAT_DIR%\do_prepare.bat
call %BAT_DIR%\do_build.bat
%ZIP_DIR%\7z.exe a -t7z %OUT_DIR%\HTCCamera_from_AMAZE_for_EVO3D_v%VERSION%_all_in_one_by_bio.7z %OUT_DIR%\HTCCamera_1920x1080_v%VERSION%_by_bio_signed.zip %OUT_DIR%\HTCCamera_2048x1152_v%VERSION%_by_bio_signed.zip %OUT_DIR%\HTCCamera_1920x1080_v%VERSION%_by_bio.apk %OUT_DIR%\HTCCamera_2048x1152_v%VERSION%_by_bio.apk
