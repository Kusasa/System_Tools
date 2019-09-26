@echo off
IF %1.==. GOTO No1
IF %2.==. GOTO No1
FOR %%i IN (%1\*.tif) DO gdalwarp -of GTiff -srcnodata 0 -dstalpha %%i %2\%%~nxi
GOTO End1

:No1
  ECHO REMINDER: When running this tool, remember to specify parameter 1 as the absolute directory of the source imagery and specify parameter 2 as the absolute directory of the resultant imagery.
GOTO End1

:End1