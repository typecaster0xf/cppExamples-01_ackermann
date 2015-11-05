CC=g++

ackermann.exe: \
		bin/main__opt.o \
		bin/ackermann__opt.o
	$(CC) $^ -o $@

unittestAckermann.exe: \
		src/ackermann.cpp \
		include/ackermann.h
	$(CC) $< -I include -D UNITTEST -o $@

.SECONDEXPANSION:
OBJECT=$(CC) $< -c -I include -o $@
OPTIMIZED=$(CC) $< -c -I include -O3 -D NDEBUG -o $@

bin/ackermann.o: \
		src/ackermann.cpp \
		include/ackermann.h | bin
	$(OBJECT)
bin/ackermann__opt.o: \
		src/ackermann.cpp \
		include/ackermann.h | bin
	$(OPTIMIZED)

bin/main.o: \
		src/main.cpp \
		include/ackermann.h | bin
	$(OBJECT)
bin/main__opt.o: \
		src/main.cpp \
		include/ackermann.h | bin
	$(OPTIMIZED)

bin:
	mkdir bin

.PHONY: clean
clean:
	rm -f *.exe
	rm -rf bin/
