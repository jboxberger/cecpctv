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

# testing script (on|off|standby)
ssh pi@pimon "~/cecpctv/cecpctv standby"

```

### setup client
```
# USER=pi
# SERVER=pimon
# plase change accordingly

# generate ssh keys
ssh-keygen -t ed25519 -f ~/.ssh/pimon
ssh-copy-id -i ~/.ssh/pimon pi@pimon

#test
ssh pi@pimon

# run client watcher on logon
# modify Icon and Exec path in the cecpctv-client.desktop as needed
cp ./cecpctv-client.desktop /home/jbo/.config/autostart/cecpctv-client.desktop
sudo reboot

# testing client script (on|off|standby)
/usr/bin/sleep 0.5 && /usr/bin/xset dpms force standby
```
