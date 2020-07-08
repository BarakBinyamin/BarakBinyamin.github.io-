:: Install dependecies
Echo "please wait until the CMD window disappears"
Echo ""
pip install youtube-dl
cd C:\Program Files
powershell -Command "
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-20200628-4cfcfb3-win64-static.zip', 'ffmpeg.zip')"
powershell -Command "Invoke-WebRequest https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-20200628-4cfcfb3-win64-static.zip -OutFile ffmpeg.zip"
powershell "Expand-Archive -Force 'C:\Users\rocky\Desktop\song\ffmpeg.zip' 'C:\Program Files\ffmpeg'"
