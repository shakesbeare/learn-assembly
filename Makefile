all: hello_assembly.asm
	as -o hello_assembly.o hello_assembly.asm
	ld hello_assembly.o -macos_version_min 13.0 -lSystem -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -o hello_assembly

run:
	make clean
	make all
	echo "\n"
	./hello_assembly 

clean:
	rm -f hello_assembly.o hello_assembly
