FOR /D %%G in (*) DO mkdir .\%%G\atm_corrected 

FOR /D %%G in (*) DO (FOR /D %%X in (%%G\*.SAFE) DO L2A_Process.bat %%X --output_dir .\%%G\atm_corrected --resolution 10)
