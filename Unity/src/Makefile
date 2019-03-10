LIB = unity
LIBF = ../lib/lib$(LIB).so
OBJ = $(LIB).o
CC = cc

CFLAGS = -shared -fPIC

STRIP = strip
RM = rm
RMFLAGS = -f

all: $(LIBF)

$(LIBF): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ)
	$(STRIP) $@

.c.o: $(CC) -c $<

allclean: clean
	$(RM) $(RMFLAGS) $(LIBF)

clean:
	$(RM) $(RMFLAGS) $(OBJ)

# Compile rules
$(OBJ):	$(LIB).c $(LIB).h unity_internals.h Makefile

