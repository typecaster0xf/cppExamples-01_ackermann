CC=g++

ackermann.o: src/ackermann.cpp include/ackermann.h
	$(CC) $< -c -I include -o $@

.PHONY: clean
clean:
	rm -f *.o
