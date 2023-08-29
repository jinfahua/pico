all: server

clean:
	@rm -rf *.o
	@rm -rf server

server: main.o httpd.o
	gcc -fprofile-arcs -ftest-coverage -O0 -o server $^

main.o: main.c httpd.h
	gcc -fprofile-arcs -ftest-coverage -O0 -c -o main.o main.c

httpd.o: httpd.c httpd.h
	gcc -fprofile-arcs -ftest-coverage -O0 -c -o httpd.o httpd.c

