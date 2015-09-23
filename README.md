# docker-proftpd

Example run for a proftpd instance:

```bash
docker run -d -p 20:20 -p 21:21 \
-e FTP_USERNAME=test -e FTP_PASSWORD=test \
hauptmedia/proftpd
```
