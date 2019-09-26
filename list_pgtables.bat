@echo off
IF %1.==. GOTO No1
psql -U postgres -h IP -p 5432 -d database -c "\dt w*."  -o list_of_pgtables.csv

python list_pgtables.py

for /F %%t in (list_of_pgtables_2.csv) do pgsql2shp -h IP -p 5432 -u %1 -P password -f %%t.shp database %%t

GOTO End1

:No1
  ECHO REMINDER: When running this tool, remember to specify parameter as the designated username.
GOTO End1

:End1

PAUSE