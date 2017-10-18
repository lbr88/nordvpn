install:
	
	install -p -o root -g root -m 750 usr/sbin/nordvpn /usr/local/sbin/nordvpn
	install -p -o root -g root -m 640 lib/systemd/system/nordvpn.service /etc/systemd/system/nordvpn.service
	install -p -o root -g root -m 640 etc/default/nordvpn /etc/default/nordvpn
	mkdir -p /etc/nordvpn
	mkdir -p /run/nordvpn
	chown root:root -R /etc/nordvpn
	systemctl daemon-reload

uninstall:
	rm /etc/default/nordvpn
	rm /usr/local/sbin/nordvpn
	rm /etc/systemd/system/nordvpn.service
