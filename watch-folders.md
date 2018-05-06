
http://inotify.aiken.cz/?section=incron&page=doc&lang=en

https://www.linux.com/learn/how-use-incron-monitor-important-files-and-folders


Steps 

1. sudo apt-get install incron

2. sudo nano /etc/incron.allow 

  Add user to the file on root systems add 
  root
  
  or on user root system add
  username
  
3. Add rules
  incrontab -e
  
4. Check syslogs
  tail -f /var/log/syslog
  
  





