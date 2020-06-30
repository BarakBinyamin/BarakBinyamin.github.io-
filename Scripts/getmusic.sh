#this script uses youtube_dl to download batches of music from youtube

#usage $bash getmusic.sh YOUTUBELINKS.txt
 
#requires youtube _dl ${sudo pip install --upgrade youtube_dl }(remove from desktop)

#file with youtube links, one per line
links=$1

echo "download beginning..."

for link in $(cat $links)
do
    echo "downloading $i"
    youtube-dl --extract-audio --audio-format mp3 "$link"
done


