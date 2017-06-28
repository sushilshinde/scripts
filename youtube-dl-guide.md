# Download youtube video and playlists via command line using youtube-dl

## Steps 

0. You might have to download python for linux and mac, for windows it's not necessary  
1. Download youtube-dl from https://rg3.github.io/youtube-dl/download.html
2. Install on [PATH](http://windowsitpro.com/systems-management/how-can-i-add-new-folder-my-system-path) so you can run from anywhere as a command
3. Open command prompt and navigate (cd foldername) to a video folder where you want to download videos  

### For Single Video / Complete Playlist 
```
> youtube-dl -cit < url>
```
**Example :** 
```
> youtube-dl -cit https://www.youtube.com/playlist?list=PL6gx4Cwl9DGAcbMi1sH6oAMk4JHw91mC_
```

*Try youtube-dl --help command for more options. You can audio extract, change download resolution and more...*
*Keep youtube-dl updated with this command (it's important)*
```
> youtube-dl  -U
```

# I have a written a wrapper for batch download of multiple videos and plalists at one go!

## For Windows User 
1. Download [youtube-dl-batch.bat](https://raw.githubusercontent.com/sushilshinde/scripts/master/youtube-dl-batch.bat) file and copy to a folder which you will add to system PATH
2. Add #1 folder to the system [PATH](http://windowsitpro.com/systems-management/how-can-i-add-new-folder-my-system-path)
3. Create a file with below format(each url on new line) in the folder where you want to download all the videos, let's call this file list.txt

```
https://www.youtube.com/watch?v=nG7OhBnfefE
https://www.youtube.com/watch?v=9FPkN6ETqes
```
4. Run the command from command prompt
```
> youtube-dl-batch text.txt
```

## For Linux User - 

1. Run this script

```
> curl -sL https://raw.githubusercontent.com/sushilshinde/scripts/master/install-youtube-dl | sudo -E bash -
```
*This script will install youtube-dl and youtube-dl-batch, also will make them executable available on path*

3. Create a file with below format(each url on new line) in the folder where you want to download all the videos, let's call this file list
```
https://www.youtube.com/watch?v=nG7OhBnfefE
https://www.youtube.com/watch?v=9FPkN6ETqes
```
5. Run command from any folder and provide file path as first parameter
```
> youtube-dl-batch list
```

