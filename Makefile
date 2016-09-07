
CC=gcc
CFLAGS=-fPIC

ifeq ($(CC),x86_64-nt64-midipix-gcc)
	CFLAGS+= -DMIDIPIX
endif

all: 
	$(CC) $(CFLAGS) -o bcrypt.so -shared bcrypt.c bcrypt_pbkdf.c blowfish.c sha2.c timingsafe_bcmp.c
