:: This script uses youtube_dl to download batches of music from youtube

:: DEPENDECIES
:: In CMD C://pip install youtube-dl

:: FFmpeg, converts to mp3, not essential
:: get ffmpeg at https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-20200628-4cfcfb3-win64-static.zip >  move into a temp folder and unzip > make a folder in "C:\program files" name ffmpeg >
:: move unzipped contents into the ffmpeg folder > find the bin folder in the ffmpeg > cut all contents into the ffmpeg folder and delete the other long path > open settings
:: Advanced System Settings > Advanced tab > Environment Variables > select Path in the second table > edit > new > paste the path to the bin folder C:\Program Files\ffmpeg\
:: save, now you can use ffmpeg for other programs too... https://video.stackexchange.com/questions/20495/how-do-i-set-up-and-use-ffmpeg-in-windows

::EASY Install
:: Step 1: search cmd > right click > run as admin
:: Step 2: paste: powershell -Command "

:: USAGE
:: In CMD C:\getmusic.bat YOUTUBELINKS.txt

@echo off
echo "download beginning..."  
for /f "delims=" %%i in (%1) do youtube-dl --extract-audio --audio-format mp3 %%i  
echo "download complete"  
