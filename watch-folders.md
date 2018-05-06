
# On Ubuntu

http://inotify.aiken.cz/?section=incron&page=doc&lang=en

https://www.linux.com/learn/how-use-incron-monitor-important-files-and-folders

## Steps 

### Install
sudo apt-get install incron

### Add users
sudo nano /etc/incron.allow 
 
### Add rules
incrontab -e
  
### Check syslogs
tail -f /var/log/syslog

### Add new file to these folders and Check syslogs again
  
  





