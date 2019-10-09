default: test.exe
	uname -a

test.exe: test.c
	$(CC) $< -o $@

test: test.exe
	./test.exe

clean:
	rm -rf test.exe
