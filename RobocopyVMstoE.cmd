@echo off
REM Simple robocopy script to backup data from one directory to another. Great for scheduled tasks...
robocopy "C:\Source_Data" "E:\Backup_Directory" /MIR /FFT /Z /XA:H /W:5
exit
