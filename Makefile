TARGET = test_example
SUBTARGETS = add.c add.h
CC = gcc
UNITY_HOME = ${HOME}/Desktop/projects/c_unity_tests/Unity
UNIHEAD = ${UNITY_HOME}/src
UNIPATH = ${UNITY_HOME}/lib
CFLAGS = -D UNITY_EXCLUDE_STDINT_H -I${UNIHEAD}
UNILIB = -l unity

all: $(TARGET)

$(TARGET): $(TARGET).c 
	$(CC) $(CFLAGS) $(TARGET).c $(SUBTARGETS) -o $(TARGET) -L$(UNIPATH) $(UNILIB)

clean: 
	rm $(TARGET)
	@echo "clean performed"

run: $(TARGET)
	./$(TARGET)

