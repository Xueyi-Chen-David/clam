#source : https://gist.github.com/wkentaro/4156dfc7922437a9ff60
CC :=gcc
C_SOURCES :=$(wildcard *.c)
C_EXECUTABLE :=$(C_SOURCES:.c=) # .c replace to none. because .c="" is nothing
 
all:$(C_EXECUTABLE)

$(C_EXECUTABLE):$(C_SOURCES) # $@ means the current target which is C_EXECUTABLE, and $< means the first of C_SOURCES
		$(CC) $< -o out/$@ 

clean:
		rm -rf $(EXECUTABLE)