CC=g++

bin/ackermann.o: \
		src/ackermann.cpp \
		include/ackermann.h | bin
	$(CC) $< -c -I include -o $@
bin/ackermann__opt.o: \
		src/ackermann.cpp \
		include/ackermann.h | bin
	$(CC) $< -c -I include -O3 -D NDEBUG -o $@

bin:
	mkdir bin

.PHONY: clean
clean:
	rm -rf bin/
