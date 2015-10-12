# docker-proftpd

Example run for a proftpd instance:

```bash
docker run -d --net host \
-e FTP_USERNAME=test -e FTP_PASSWORD=test \
-v /path/to/your/ftpdir:/home/$FTP_USERNAME \
hauptmedia/proftpd
```
