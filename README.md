### cecpctv
You need a hdmi-cec capable device (e.g. raspberry pi) to get this application running.

### setup raspberry pi as service
```
# grand acess to the gpio header
sudo usermod -a -G gpio $USER

# install cec-utils
sudo apt update && sudo apt upgrade
sudo apt install cec-utils
sudo reboot

# install cecpctv as service (log: /var/log/cecpctv)
./cecpctv service install
./cecpctv service enable
sudo reboot
```

