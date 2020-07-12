:: Install dependecies  
@Echo off
color a
title GetMusic Install
Echo please wait until the CMD window disappears 
Echo press any key to continue with the install...
pause > NUL
  
powershell -Command "New-Item -ItemType directory -Path 'C:\Users\%username%\Desktop\getmusic'"  
cd C:\Users\%username%\Desktop\getmusic  

::get python and pip
::powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.python.org/ftp/python/3.8.3/python-3.8.3-amd64.exe', 'python.exe')"   
::powershell -Command "Invoke-WebRequest https://yt-dl.org/downloads/2020.06.16.1/youtube-dl.exe -OutFile python.exe" 
::C:\Users\%username%\Desktop\getmusic\python.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
::powershell -Command "(New-Object Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py')"   
::powershell -Command "Invoke-WebRequest https://bootstrap.pypa.io/get-pip.py -OutFile get-pip.py" 
::python get-pip.py
::setx path "%path%;'C:\Program Files\ffmpeg\bin'"  

::install youtube-dl
echo downloading youtube-dl...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://yt-dl.org/downloads/2020.06.16.1/youtube-dl.exe', 'youtube-dl.exe')"   
powershell -Command "Invoke-WebRequest https://yt-dl.org/downloads/2020.06.16.1/youtube-dl.exe -OutFile youtube-dl.exe"
echo downloading visualStudio C++...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://download.microsoft.com/download/5/B/C/5BC5DBB3-652D-4DCE-B14A-475AB85EEF6E/vcredist_x86.exe', 'vcredist_x86.exe')"   
powershell -Command "Invoke-WebRequest https://download.microsoft.com/download/5/B/C/5BC5DBB3-652D-4DCE-B14A-475AB85EEF6E/vcredist_x86.exe -OutFile vcredist_x86.exe"
vcredist_x86.exe

::install and configure ffmpeg
echo downloading ffmpeg...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-20200628-4cfcfb3-win64-static.zip', 'ffmpeg.zip')"  
powershell -Command "Invoke-WebRequest https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-20200628-4cfcfb3-win64-static.zip -OutFile ffmpeg.zip"  
powershell -Command "New-Item -ItemType directory -Path 'C:\Program Files\ffmpeg'"  
powershell "Expand-Archive -Force 'C:\Users\%username%\Desktop\getmusic\ffmpeg.zip' 'C:\Program Files\ffmpeg'" 
XCOPY  /E  "C:\Program Files\ffmpeg\ffmpeg-20200628-4cfcfb3-win64-static\bin" "C:\Users\%username%\Desktop\getmusic"

 

::Download getmusic script
echo downloading Getmusic...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://barakbinyamin.github.io/Scripts/getmusic.bat', 'getmusic.bat')"   
powershell -Command "Invoke-WebRequest https://barakbinyamin.github.io/Scripts/getmusic.bat -OutFile getmusic.bat"  
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://barakbinyamin.github.io/Scripts/YOUTUBELINKS.txt', 'YOUTUBELINKS.txt')"  
powershell -Command "Invoke-WebRequest https://barakbinyamin.github.io/Scripts/YOUTUBELINKS.txt -OutFile YOUTUBELINKS.txt"  

echo download complete
echo you can find the getmusic program in the getmusic folder on your desktop
echo press any key to exit...
pause  > NUL
exit  
