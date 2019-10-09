default: test.exe
	uname -a
	./test.exe

test.exe: test.c
	$(CC) $< -o $@
