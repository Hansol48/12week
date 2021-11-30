obj-m = led.o
PWD := $(shell pwd)
export ARCH=arm
Export CROSS_COMPILE=arm-linux.gnueabi-

all : led.h led.c
	arm-linux-gnueabi-cdd -c led.c -o led.o
	arm-linux-gnueabi-ar rc libMyperi.a led.o

clean :
	-rm *.o *.mod.c .*.cmd modules.order Module.symvers
