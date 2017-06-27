# Download youtube video and playlists via command line using youtube-dl

## Steps 

0. You might have to download python for linux and mac, for windows it's not necessary  
1. Download youtube-dl from https://rg3.github.io/youtube-dl/download.html
2. Install on path so you can run from anywhere as a command
3. Open command prompt and navigate (cd foldername) to a video folder where you want to download videos  

### For Single Video / Complete Playlist 

> youtube-dl -cit < url>

**Example :** 

> youtube-dl -cit https://www.youtube.com/playlist?list=PL6gx4Cwl9DGAcbMi1sH6oAMk4JHw91mC_


*Try youtube-dl --help command for more options. You can audio extract, change download resolution and more...*
*Keep youtube-dl updated with this command (it's important)*
>youtube-dl -U

### For Advanced Users (Linux)

1. Create a file with file with the file named "list" of videos with every url on new line

```
https://www.youtube.com/watch?v=nG7OhBnfefE
https://www.youtube.com/watch?v=9FPkN6ETqes
```

2. Create batch script named "youtube-dl-batch" anywhere with this code

```
#!/bin/bash

input="$1"

while IFS= read -r var
do
	echo "Downloading:  $var"

  sudo youtube-dl -cit "$var"

done < "$input"	
```
3. Make it executable

> chmod +x youtube-dl-batch  && sudo cp youtube-dl-batch /usr/bin

4. Run command from any folder and provide file path as first parameter

> youtube-dl-batch list 
