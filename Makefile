CC=g++

ackermann.o: \
		src/ackermann.cpp \
		include/ackermann.h
	$(CC) $< -c -I include -o $@
ackermann__opt.o: \
		src/ackermann.cpp \
		include/ackermann.h
	$(CC) $< -c -I include -O3 -D NDEBUG -o $@

.PHONY: clean
clean:
	rm -f *.o
