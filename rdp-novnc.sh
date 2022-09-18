# Free Google novnc
#!/bin/sh

#NC: No color
Color='\033[1;32m'
NC='\033[0m'

sudo apt install screen
screen -R novnc
echo -e "Change ${Color}port to 6090${NC}"
echo -e "NoVNC"
sudo /sbin/sysctl -w net.ipv4.tcp_keepalive_time=60 net.ipv4.tcp_keepalive_intvl=10 net.ipv4.tcp_keepalive_probes=6
sudo sysctl -p

#docker run -p 6090:80 -e USER=son -e PASSWORD=son -v /dev/shm:/dev/shm aank999/ubuntu-desktop-lxde-vnc
docker run -p 6090:80 -e USER=son -e PASSWORD=son -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc

