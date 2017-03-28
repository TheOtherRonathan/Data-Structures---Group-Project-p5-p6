# Define the machine object files for your program
OBJECTS = p6cdd105.o p6skk956.o p6uic155.o cs2123p6Driver.o
# Define your include file
INCLUDES = cs2123p6.h

# make for the executable
p6: ${OBJECTS}
	gcc -g -o p6 ${OBJECTS}

# Simple suffix rules for the .o
%.o: %.c ${INCLUDES}
	gcc -g -c $<

# Clean the .o files
clean:
	rm -f ${OBJECTS}