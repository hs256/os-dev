# Build the kernel binary
kernel . bin : kernel_entry . o kernel .o
	ld -o kernel . bin - Ttext 0 x1000 kernel_entry .o kernel .o -- oformat binary
# Build the kernel object file
kernel . o : kernel .c
	gcc - ffreestanding -c kernel . c -o kernel .o
# Build the kernel entry object file .
kernel_entry .o : kernel_entry . asm
	nasm kernel_entry . asm -f elf -o kernel_entry .o
