### Run code inside the docker for local development (un-dockerize )

Run docker in a interactive mode and map ports 

```
docker images 

docker run -it -p 8080:3000 82dc2c654910

sudo su -

git clone https://github.com/sushilshinde/react-docker.git

cd react-docker/

npm i

npm start

```

### youtube-dl with numbering files
youtube-dl -o "%(playlist_index)s-%(title)s.%(ext)s" <playlist_link>

rsync -rPz /my/local/dir/ workstation:/my/remote/dir

curl -L -O xyzfile

tar -xvf xyz.tar.gz

sudo systemctl restart network

### Search in a file
sudo grep -r "grub" /var/log/boot.log | less

sudo sed -n '/Mounted/p' /var/log/boot.log | less

grep -r "ERROR" ap-challenge-2018-05-10.log | tail -n 50

## Network practice
Packet tracer, GNS3 with VM
NAT, Bridge, Host Only
NAS, SAN, FreeNAS, OPenfiler, Starwind
IDS, IPS,
OpenSwitch, Vritual Router


Github kungfu 

## Replace brach with another branch

https://stackoverflow.com/questions/30105210/git-overwrite-master-with-branch/41490301


