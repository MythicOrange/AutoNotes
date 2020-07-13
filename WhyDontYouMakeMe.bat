::@ECHO OFF
SET "scriptdir=%~dp0"
IF NOT "%scriptdir:~-1%"=="\" SET "scriptdir=%scriptdir%\"
IF NOT EXSISTS ************ GOTO MAKEME

:MAKEME
mkdir %date:~-7,2%-%date:~0,2%-%date:~-4,4%
**prestavi na konec** %SystemRoot%\explorer.exe "%scriptdir%%date:~-7,2%-%date:~0,2%-%date:~-4,4%"
xcopy "%scriptdir%NePremikiNeTiki.odt" "%scriptdir%%date:~-7,2%-%date:~0,2%-%date:~-4,4%\"
SKEČI*****RENAME "%scriptdir%%date:~-7,2%-%date:~0,2%-%date:~-4,4%\NePremikiNeTiki.odt" "%date:~-7,2%-%date:~0,2%-%date:~-4,4%_Zapisnik.odt"
EXIT


%AppData%\Microsoft\Windows\Start Menu\Programs\Startup