CC=g++

ackermann.o: ackermann.cpp ackermann.h
	$(CC) -c $< -o $@

.PHONY: clean
clean:
	rm -f *.o
