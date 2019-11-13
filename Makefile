default: test.exe
	uname -a

test.exe: test.c
	$(CC) $< -o $@

test.o: test.c
	$(CC) $< -c -O2 -o $@

test: test.exe test.o
	./test.exe
	objdump -d test.o

clean:
	rm -rf test.exe
