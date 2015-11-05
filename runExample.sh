#!/bin/sh

make unittestAckermann.exe
./unittestAckermann.exe

echo ""

make ackermann.exe
./ackermann.exe 3 13
