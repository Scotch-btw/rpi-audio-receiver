echo -n "Willst du Lautstärkeknöpfe einrichten? [y/N] "
read REPLY
if [[ ! "$REPLY" =~ ^(yes|y|Y)$ ]]; then exit 0; fi

sudo apt install python3 idle3
sudo apt-get install python-alsaaudio

sudo apt-get install python-rpi.gpio python3-rpi.gpio

sudo mv CheckbuttonLautstärke.py /etc/init.d/
sudo chmod +x /etc/init.d/CheckbuttonLautstärke.py
sudo update-rc.d CheckbuttonLautstärke.py defaults
sudo /etc/init.d/CheckbuttonLautstärke.py start
