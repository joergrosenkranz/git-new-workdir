@ECHO OFF

REM Create a GIT working directory for an existing repository
REM  %1 - Path of the existing repository
REM  %2 - Path of the new working directory

REM Create the working directory
mkdir "%2"

REM And the .git folder
mkdir "%2\.git"

SET SRC=%1\.git
SET DST=%2\.git

mklink "%DST%\config" "%SRC%\config" 
mklink /D "%DST%\refs" "%SRC%\refs"
mkdir "%DST%\logs" 
mklink /D "%DST%\logs\refs" "%SRC%\logs\refs" 
mklink /D "%DST%\objects" "%SRC%\objects" 
mklink /D "%DST%\info" "%SRC%\info" 
mklink /D "%DST%\hooks" "%SRC%\hooks" 
mklink "%DST%\packed-refs" "%SRC%\packed-refs" 
REM mklink /D "%DST%\remotes" "%SRC%\remotes" 
REM mklink /D "%DST%\rr-cache" "%SRC%\rr-cache" 
mklink /D "%DST%\svn" "%SRC%\svn" 

copy "%SRC%\HEAD" "%DST%\HEAD"