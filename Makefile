# Compiler
CXX = g++
CXXFLAGS = -std=c++20 -Wall -Wextra -O2

# Source and Object Files
SOURCES = src/dijkstras.cpp src/dijkstras_main.cpp
TARGET = dijkstras

# Default Target
all: $(TARGET)

# Build Executable
$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $^ -o $@

# Clean Build Files
clean:
	rm -f $(TARGET)
