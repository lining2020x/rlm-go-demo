all: demo

.PHONY: lib demo clean
lib:
	cd pkg/license/rlm && g++ -c -o src/rlm.o src/rlm.c -I include/ && ar -r lib/librlm.a src/rlm.o

demo: 
	go build -a -o bin/demo . 

static: 
	go build -a -ldflags='-extldflags=-static' -o bin/demo-static .
clean:
	rm -rf pkg/license/rlm/lib/*.a
	rm -rf pkg/license/rlm/src/*.o
	rm -rf bin/ 
