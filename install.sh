#!/bin/bash

cd $(dirname "$0")

echo "$(getent passwd $SUDO_USER | cut -d: -f6 | grep '/home/')">bin/usrHome

sudo mkdir /usr/local/bin/anp 2>/dev/null
sudo cp bin/* /usr/local/bin/anp 
sudo chmod 755 /usr/local/bin/anp/*

sudo cp anp_push_on_sh.service /etc/systemd/system/
sudo cp anp_pull_on_st.service /etc/systemd/system/


sudo systemctl daemon-reload
sudo systemctl enable anp_push_on_sh.service
sudo systemctl enable anp_pull_on_st.service
# systemctl start anp_push_on_sh.service
# systemctl start anp_pull_on_st.service
