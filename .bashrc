### Do things at firstrun
echo .
echo Please your icecast service file.
echo \(Editor will open momentarily.\)
echo .
sleep 4
systemctl edit icecast
systemctl enable icecast
clear
echo .
echo Please your icecast config file.
echo \(Editor will open momentarily.\)
echo .
sleep 4
nano /etc/icecast.xml
clear
echo .
echo If you are satisfied with your config, start it with \'systemctl start icecast\'
echo Otherwise, re-open the editor with \'nano /etc/icecast.xml\'
echo .
rm ~/.bashrc
