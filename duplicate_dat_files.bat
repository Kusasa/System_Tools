@echo off
ECHO REMINDER: When running this tool, remember to have the duplicate_dat_files.bat, mapsets.csv, DesposSQL.dat, DesposMapSQL.dat, MapClassesSQL.dat, SearchSQL.dat all in the same directory.

PAUSE

echo Starting copy process...
mkdir mapset_dats
for /F %%t in (mapsets.csv) do (copy DesposSQL.dat mapset_dats\%%tDesposSQL.dat && copy DesposMapSQL.dat mapset_dats\%%tDesposMapSQL.dat && copy MapClassesSQL.dat mapset_dats\%%tClassesSQL.dat && copy SearchSQL.dat mapset_dats\%%tSearchSQL.dat && echo ---- Mapset %%t done ----)
echo Process Completed.

PAUSE