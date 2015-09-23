.PHONY: docker-proftpd

docker-proftpd:
	docker build -t hauptmedia/proftpd .
