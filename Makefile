test: shared-mem.o test.c writer reader
	gcc -o test test.c shared-mem.o -lrt -lpthread
writer: writer.c
	gcc -o writer writer.c shared-mem.o -lrt -lpthread
reader: reader.c
	gcc -o reader reader.c shared-mem.o -lrt -lpthread
allocate-shared-mem.o: shared-mem.c
	gcc -o shared-mem.o shared-mem.c -lrt -lpthread -c
make clean:
	rm -f *.o test writer reader
