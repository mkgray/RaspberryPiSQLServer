# Install DNS
cd /usr/local/src/
sudo wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz
sudo tar xf noip-duc-linux.tar.gz
sudo rm noip-duc-linux.tar.gz
cd noip-2.1.9-1/
sudo make install

# Set up noip2 to run on raspberry pi boot
cd /etc/
echo "" >> rc.local
echo "sudo noip2" >> rc.local

# Need to port forward external port to internal 80 on the pi
# Need to port forward ssh if wanted
