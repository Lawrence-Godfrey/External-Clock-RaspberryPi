.RECIPEPREFIX +=
CC = gcc
CFLAGS = -Wall -lm -lrt -lwiringPi

PROG = bin/*
OBJS = obj/*

default:
    mkdir -p bin obj
    $(CC) $(CFLAGS) -c BinClock.c -o obj/BinClock
    $(CC) $(CFLAGS) -c CurrentTime.c -o obj/CurrentTime
    $(CC) $(CFLAGS) obj/BinClock obj/CurrentTime -o bin/Clock

run:
    sudo ./bin/Clock

clean:
    rm $(PROG) $(OBJS)
