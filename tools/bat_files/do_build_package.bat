@ECHO OFF
echo Build Package. dir=%1 package_and_apk_name=%2

call %BAT_DIR%\do_build_apk.bat %1 %2
copy /y %1\%2.apk %1\package\system\app\HTCCamera.apk

pushd %1\package
%ZIP_DIR%\7z.exe a -tzip %2.zip META-INF\ system\
call %SIGNAPK_DIR%\signapk.bat %2.zip %2_signed.zip
copy /y %2_signed.zip %OUT_DIR%\%2_signed.zip
popd
