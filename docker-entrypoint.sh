#!/bin/sh

if [ -n "$FTP_USERNAME" -a -n "$FTP_PASSWORD" ]; then
	CRYPTED_PASSWORD=$(perl -e 'print crypt($ARGV[0], "password")' $FTP_PASSWORD)
	useradd --shell /bin/sh --create-home --password $CRYPTED_PASSWORD $FTP_USERNAME
fi

exec "$@"
