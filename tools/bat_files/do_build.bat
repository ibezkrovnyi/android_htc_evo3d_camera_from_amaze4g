echo *************************************************************************
echo                                                        build all versions
echo *************************************************************************
call %BAT_DIR%\do_build_package.bat %TMP_DIR%\src.1920x1080 HTCCamera_1920x1080_v%VERSION%_by_bio
call %BAT_DIR%\do_build_package.bat %TMP_DIR%\src.2048x1152 HTCCamera_2048x1152_v%VERSION%_by_bio
call %BAT_DIR%\do_build_apk.bat %TMP_DIR%\apk_src.1920x1080 HTCCamera_1920x1080_v%VERSION%_by_bio
copy /y %TMP_DIR%\apk_src.1920x1080\HTCCamera_1920x1080_v%VERSION%_by_bio.apk %OUT_DIR%\*.*
call %BAT_DIR%\do_build_apk.bat %TMP_DIR%\apk_src.2048x1152 HTCCamera_2048x1152_v%VERSION%_by_bio
copy /y %TMP_DIR%\apk_src.2048x1152\HTCCamera_2048x1152_v%VERSION%_by_bio.apk %OUT_DIR%\*.*
