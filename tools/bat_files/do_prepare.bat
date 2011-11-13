echo *************************************************************************
echo                                                            create folders
echo *************************************************************************
mkdir %OUT_DIR%
mkdir %TMP_DIR%

echo *************************************************************************
echo                                                    prepare source folders
echo *************************************************************************
call %BAT_DIR%\do_prepare_src.bat %TMP_DIR%\src.2048x1152 "#define RESOLUTION2048"
call %BAT_DIR%\do_prepare_src.bat %TMP_DIR%\src.1920x1080

echo *************************************************************************
echo                         prepare folders for SEPARATE apk without flashing
echo *************************************************************************
mkdir %TMP_DIR%\apk_src.1920x1080
xcopy /Q /Y /E %TMP_DIR%\src.1920x1080\*.* %TMP_DIR%\apk_src.1920x1080\*.*
mkdir %TMP_DIR%\apk_src.2048x1152
xcopy /Q /Y /E %TMP_DIR%\src.2048x1152\*.* %TMP_DIR%\apk_src.2048x1152\*.*

echo *************************************************************************
echo         change package "com.android.camera" to "com.android.amaze_camera"
echo *************************************************************************
%FNR_DIR%\fnr.exe --cl --dir "%TMP_DIR%\apk_src.1920x1080\HTCCamera" --fileMask "*.*" --includeSubDirectories --find "com/android/camera" --replace "com/android/amaze_camera" --caseSensitive
%FNR_DIR%\fnr.exe --cl --dir "%TMP_DIR%\apk_src.1920x1080\HTCCamera" --fileMask "*.*" --includeSubDirectories --find "com\.android\.camera" --replace "com.android.amaze_camera" --caseSensitive

%FNR_DIR%\fnr.exe --cl --dir "%TMP_DIR%\apk_src.2048x1152\HTCCamera" --fileMask "*.*" --includeSubDirectories --find "com/android/camera" --replace "com/android/amaze_camera" --caseSensitive
%FNR_DIR%\fnr.exe --cl --dir "%TMP_DIR%\apk_src.2048x1152\HTCCamera" --fileMask "*.*" --includeSubDirectories --find "com\.android\.camera" --replace "com.android.amaze_camera" --caseSensitive
