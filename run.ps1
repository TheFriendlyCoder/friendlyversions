mkdir c:\temp
$progressPreference = 'silentlyContinue'
Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.8.0/python-3.8.0-amd64.exe" -OutFile "c:/temp/python-3.8.0-amd64.exe"
c:\temp\python-3.8.0-amd64.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0