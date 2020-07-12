:: Install dependecies  
Echo please wait until the CMD window disappears  
pause  
  
powershell -Command "New-Item -ItemType directory -Path 'C:\Users\%username%\Desktop\getmusic'"  
cd C:\Users\%username%\Desktop\getmusic  

::get python and pip
::powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.python.org/ftp/python/3.8.3/python-3.8.3-amd64.exe', 'python.exe')"   
::powershell -Command "Invoke-WebRequest https://www.python.org/ftp/python/3.8.3/python-3.8.3-amd64.exe -OutFile python.exe" 
::C:\Users\%username%\Desktop\getmusic\python.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
::powershell -Command "(New-Object Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py')"   
::powershell -Command "Invoke-WebRequest https://bootstrap.pypa.io/get-pip.py -OutFile get-pip.py" 
::python get-pip.py

::install youtube-dl
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://yt-dl.org/downloads/2020.06.16.1/youtube-dl.exe', 'youtube-dl.exe')"   
powershell -Command "Invoke-WebRequest https://www.python.org/ftp/python/3.8.3/python-3.8.3-amd64.exe -OutFile youtube-dl.exe"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.microsoft.com/en-US/download/confirmation.aspx?id=5555', 'visualc.exe')"   
powershell -Command "Invoke-WebRequest https://www.microsoft.com/en-US/download/confirmation.aspx?id=5555 -OutFile visualc.exe"


::install and configure ffmpeg
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-20200628-4cfcfb3-win64-static.zip', 'ffmpeg.zip')"  
powershell -Command "Invoke-WebRequest https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-20200628-4cfcfb3-win64-static.zip -OutFile ffmpeg.zip"  
powershell -Command "New-Item -ItemType directory -Path 'C:\Program Files\ffmpeg'"  
powershell "Expand-Archive -Force 'C:\Users\%username%\Desktop\getmusic\ffmpeg.zip' 'C:\Program Files\ffmpeg'" 
XCOPY  \E  \I 'C:\Program Files\ffmpeg\ffmpeg-20200628-4cfcfb3-win64-static' 'C:\Program Files\ffmpeg'
setx path "%path%;'C:\Program Files\ffmpeg\bin'"   

::Download getmusic script
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://barakbinyamin.github.io/Scripts/installGetMusic.bat', 'getmusic.bat')"   
powershell -Command "Invoke-WebRequest https://barakbinyamin.github.io/Scripts/installGetMusic.bat -OutFile getmucic.bat"  
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://barakbinyamin.github.io/Scripts/YOUTUBELINKS.txt', 'YOUTUBELINKS.txt')"  
powershell -Command "Invoke-WebRequest https://barakbinyamin.github.io/Scripts/YOUTUBELINKS.txt -OutFile YOUTUBELINKS.txt"  


echo download complete, press any key to exit  
pause  
exit  
