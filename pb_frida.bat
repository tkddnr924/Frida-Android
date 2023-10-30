@echo off

:: Virtualenv\
call .\venv\Scripts\activate.bat


:: Frida
set FIAU=frida-interception-and-unpinning
set PACKAGE=com.sec.android.app.sbrowser

frida -U ^
	-l %FIAU%\config.js ^
	-l %FIAU%\native-connect-hook.js ^
	-l %FIAU%\android\android-proxy-override.js ^
	-l %FIAU%\android\android-system-certificate-injection.js ^
	-l %FIAU%\android\android-certificate-unpinning.js ^
	-l %FIAU%\android\android-certificate-unpinning-fallback.js ^
	-f %PACKAGE%
