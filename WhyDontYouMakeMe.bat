GOTO SCRIPTSET

:SCRIPTSET
SET "scriptdir=%~dp0"
IF NOT "%scriptdir:~-1%"=="\" SET "scriptdir=%scriptdir%\"

:CHECKME
IF EXIST "%scriptdir%Zapisniki" GOTO DATEME
mkdir Zapisniki
attrib WhyDontYouMakeMe.bat +h
attrib NePremikiNeTiki.odt +h
mklink "%scriptdir%WhyDontYouMakeMe.bat" "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\WhyDontYouMakeMe.bat"

:DATEME
IF EXIST "%scriptdir%Zapisniki\%date:~-7,2%-%date:~0,2%-%date:~-4,4%" GOTO MAKEME
mkdir "%scriptdir%Zapisniki\%date:~-7,2%-%date:~0,2%-%date:~-4,4%"

:MAKEME
IF EXIST "%scriptdir%Zapisniki\%date:~-7,2%-%date:~0,2%-%date:~-4,4%\%date:~-7,2%-%date:~0,2%-%date:~-4,4%.odt" GOTO OPENME
xcopy "%scriptdir%NePremikiNeTiki.odt" "%scriptdir%Zapisniki\%date:~-7,2%-%date:~0,2%-%date:~-4,4%\"
RENAME "%scriptdir%Zapisniki\%date:~-7,2%-%date:~0,2%-%date:~-4,4%\NePremikiNeTiki.odt" "%date:~-7,2%-%date:~0,2%-%date:~-4,4%_Zapisnik.odt"

:OPENME
%SystemRoot%\explorer.exe "%scriptdir%Zapisniki\%date:~-7,2%-%date:~0,2%-%date:~-4,4%"
EXIT
