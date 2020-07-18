@echo off
robocopy "D:\VMs" "E:\VM_Backups" /MIR /FFT /Z /XA:H /W:5
exit