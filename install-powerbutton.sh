vecho -n "Willst du ein poweroff button einrichten? [y/N] "
read REPLY
if [[ ! "$REPLY" =~ ^(yes|y|Y)$ ]]; then exit 0; fi
sudo mv poweroffbutton.py /usr/local/bin/
sudo chmod +x /usr/local/bin/poweroffbutton.py
