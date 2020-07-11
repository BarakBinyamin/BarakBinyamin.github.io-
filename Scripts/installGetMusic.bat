:: Install dependecies
Echo "please wait until the CMD window disappears"
pause
Echo ""
pip install youtube-dl
powershell -Command "New-Item -ItemType directory Path 'C:\Users\%username%\Desktop\getmusic'"
cd C:\Users\%username%\Desktop\getmusic
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-20200628-4cfcfb3-win64-static.zip', 'ffmpeg.zip')"
powershell -Command "Invoke-WebRequest https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-20200628-4cfcfb3-win64-static.zip -OutFile ffmpeg.zip"
powershell -Command "New-Item -ItemType directory Path 'C:\Program Files\ffmpeg'"
powershell "Expand-Archive -Force 'C:\Users\%username%\Desktop\getmusic\ffmpeg.zip' 'C:\Program Files\ffmpeg'"
cd "C:\Program Files\ffmpeg\ffmpeg-2020200628-4cfcfb3-win64-static"
xcopy /e /v 'C:\Program Files\ffmpeg\ffmpeg-2020200628-4cfcfb3-win64-static' 'C:\Program Files\ffmpeg'

::Downloading program
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://barakbinyamin.github.io/Scripts/installGetMusic.bat', 'getmusic.bat')"
powershell -Command "Invoke-WebRequest https://barakbinyamin.github.io/Scripts/installGetMusic.bat -OutFile getmucic.bat"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://barakbinyamin.github.io/Scripts/YOUTUBELINKS.txt', 'YOUTUBELINKS.txt')"
powershell -Command "Invoke-WebRequest https://barakbinyamin.github.io/Scripts/YOUTUBELINKS.txt -OutFile YOUTUBELINKS.txt"

pathman /as 'C:\Program Files\ffmpeg\bin'

echo "download complete, press any key to exit"
pause
exit
