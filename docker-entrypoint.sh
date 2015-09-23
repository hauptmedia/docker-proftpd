#!/bin/sh

if [ -n "$FTP_USERNAME" -a -n "$FTP_PASSWORD" ]; then
	CRYPTED_PASSWORD=$(perl -e 'print crypt($ARGV[0], "password")' $FTP_PASSWORD)
	mkdir /home/$FTP_USERNAME
	useradd --shell /bin/sh -d /home/$FTP_USERNAME --password $CRYPTED_PASSWORD $FTP_USERNAME
	chown -R $FTP_USERNAME:$FTP_USERNAME /home/$FTP_USERNAME
fi

exec "$@"
