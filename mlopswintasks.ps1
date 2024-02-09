Start-Process powershell -WindowStyle hidden -ArgumentList ("SCHTASKS /CREATE /SC ONLOGON /TN "MyTasks\Daily" /TR 'PowerShell -File C:\Templates\ml\mlopswinschedule.ps1'") -verb RunAs
