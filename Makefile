USERID=123456789

default: build

build: server.c client.c
	gcc -Wall -Wextra -o server GBNserver.c
	gcc -Wall -Wextra -o client GBNclient.c

clean:
	rm -rf *.o server client *.tar.gz

dist: tarball
tarball: clean
	tar -cvzf /tmp/$(USERID).tar.gz --exclude=./.vagrant . && mv /tmp/$(USERID).tar.gz .