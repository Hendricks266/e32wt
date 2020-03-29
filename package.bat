@echo off
PATH=%PATH%;C:\Program Files\7-Zip;C:\msys64\usr\bin

for /f "delims=" %%G in ('grep Release version_e32wt.txt ^| cut -d " " -f 2') do @set releasedate=%%G

set files=*.CON *.def *.grpinfo *.txt *.grp *.md
:: 7z.exe a -mx9 -t7z "e32wt_%releasedate%.7z" %files%
:: 7z.exe a -mx9 -tzip "e32wt_%releasedate%.zip" %files%
kzip.exe "e32wt_%releasedate%.zip" %files%
