@ECHO OFF

echo Build APK. dir=%1 apk_name=%2

call %APKTOOL_DIR%\apktool.bat b %1\HTCCamera %1\HTCCamera-notsigned.apk
call %SIGNAPK_DIR%\signapk.bat %1\HTCCamera-notsigned.apk %1\%2.apk
