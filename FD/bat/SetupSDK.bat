:user_configuration

:: Path to Flex SDK
set FLEX_SDK=C:\flex_sdk_4.6_air_sdk_18-144
set AUTO_INSTALL_IOS=yes

:: Path to Android SDK
set ANDROID_SDK=C:\android

:: Path to Java SDK
set JAVA_SDK=D:\Program Files\Java\jdk1.7.0_04


:validation
if not exist "%FLEX_SDK%\bin" goto flexsdk
if not exist "%ANDROID_SDK%\platform-tools" goto androidsdk
goto succeed

:flexsdk
echo.
echo ERROR: incorrect path to Flex SDK in 'bat\SetupSDK.bat'
echo.
echo Looking for: %FLEX_SDK%\bin
echo.
if %PAUSE_ERRORS%==1 pause
exit

:androidsdk
echo.
echo ERROR: incorrect path to Android SDK in 'bat\SetupSDK.bat'
echo.
echo Looking for: %ANDROID_SDK%\platform-tools
echo.
if %PAUSE_ERRORS%==1 pause
exit

:succeed
set PATH=%PATH%;%FLEX_SDK%\bin
set PATH=%PATH%;%ANDROID_SDK%\platform-tools
set PATH=%PATH%;%JAVA_SDK%\bin

