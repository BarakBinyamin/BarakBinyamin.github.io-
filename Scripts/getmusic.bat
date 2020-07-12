:: This script uses youtube_dl and FFmpeg to download batches of music from youtube

:: DEPENDECIES
::python and pip
:: youtube-dl

:: FFmpeg, converts to mp3, --> follow Easy Install steps
:: get ffmpeg at https://ffmpeg.zeranoe.com/builds/win64/static/ffmpeg-20200628-4cfcfb3-win64-static.zip >  move into a temp folder and unzip > make a folder in "C:\program files" name ffmpeg >
:: move unzipped contents into the ffmpeg folder > find the bin folder in the ffmpeg > cut all contents into the ffmpeg folder and delete the other long path > open settings
:: Advanced System Settings > Advanced tab > Environment Variables > select Path in the second table > edit > new > paste the path to the bin folder C:\Program Files\ffmpeg\
:: save, now you can use ffmpeg for other programs too... https://video.stackexchange.com/questions/20495/how-do-i-set-up-and-use-ffmpeg-in-windows

::EASY Install
:: Step 1: search cmd > right click > run as admin
:: Step 2: paste: powershell -Command "New-Item -ItemType directory -Path 'C:\Users\%username%\Desktop\Getmusic'"
:: Step 3: paste: cd C:\Users\%username%\Desktop\Getmusic
:: step 4: paste: powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/BarakBinyamin/BarakBinyamin.github.io/master/Scripts/installGetMusic.bat', 'installGetMusic.bat')"  
:: step 5: paste: powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/BarakBinyamin/BarakBinyamin.github.io/master/Scripts/installGetMusic.bat -OutFile installGetMusic.bat"
:: install step: paste: installGetMusic.bat


:: USAGE
:: Step 1: click on the Getmusic folder, edit the YOUTUBELINKS.txt
:: Step 2: run the program

@echo off
color a
title GetMusic
set /p input="Did you edit the music links?(y/n)"
If /I "%input%" == "y" goto yes
goto no

:yes
echo "download beginning..."  
for /f "delims=" %%i in (YOUTUBELINKS.txt) do youtube-dl --extract-audio --audio-format mp3 %%i  
echo download complete 
echo press any key to exit...
pause > NUL
exit

:no
echo please edit the YOUTUBELINKS.txt file
echo press any key to exit...
pause > NUL
exit
