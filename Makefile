.PHONY : all linux mingw clean

all : linux

linux : 
	gcc -g -Wall -fPIC --shared -o snapshot.so snapshot.c

mingw : 
	gcc -g -Wall --shared -o snapshot.dll snapshot.c -I/usr/local/include -L/usr/local/bin -llua52

mingw51 :
	gcc -g -Wall --shared -o snapshot.dll snapshot.c -I/usr/local/include -L/usr/local/bin -llua51

clean :
	rm -f snapshot.so snapshot.dll
