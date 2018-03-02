CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=src/socket_server.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=jurest.app

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(OBJECTS) $(EXECUTABLE)


