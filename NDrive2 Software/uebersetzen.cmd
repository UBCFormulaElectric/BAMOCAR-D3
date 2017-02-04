cd msgfmt
@echo off
rem ---------------------------------------------------------------------------------------

cls
set ext=de
set dir=../languages/%ext%
if not exist	%dir%			goto no_%ext%
echo ----[%ext%]----
echo on
if exist	%dir%/NDrive_%ext%.po	msgfmt -o %dir%/NDrive.mo  %dir%/NDrive_%ext%.po
if exist	%dir%/User_%ext%.po	msgfmt -o %dir%/User.mo    %dir%/User_%ext%.po
@echo off
echo ----[%ext%]----
pause
:no_%ext%

cls
set ext=en
set dir=../languages/%ext%
if not exist	%dir%			goto no_%ext%
echo ----[%ext%]----
echo on
if exist	%dir%/NDrive_%ext%.po	msgfmt -o %dir%/NDrive.mo  %dir%/NDrive_%ext%.po
if exist	%dir%/User_%ext%.po	msgfmt -o %dir%/User.mo    %dir%/User_%ext%.po
@echo off
echo ----[%ext%]----
pause
:no_%ext%

cls
set ext=fr
set dir=../languages/%ext%
if not exist	%dir%			goto no_%ext%
echo ----[%ext%]----
echo on
if exist	%dir%/NDrive_%ext%.po	msgfmt -o %dir%/NDrive.mo  %dir%/NDrive_%ext%.po
if exist	%dir%/User_%ext%.po	msgfmt -o %dir%/User.mo    %dir%/User_%ext%.po
@echo off
echo ----[%ext%]----
pause
:no_%ext%
rem ---------------------------------------------------------------------------------------
cd ..
