@echo off

for /f "delims=" %%G in ('grep Release readme_e32wt.txt ^| cut -d " " -f 2') do @set releasedate=%%G

7z.exe a -mx9 -t7z "e32wt_%releasedate%.7z" *.CON *.def *.grpinfo *.txt *.grp
