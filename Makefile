# Compiler
CXX = g++
CXXFLAGS = -std=c++20 -Wall -Wextra -O2

# Source Files
SRC_DIR = src
SOURCES_DIJKSTRA = $(SRC_DIR)/dijkstras.cpp $(SRC_DIR)/dijkstras_main.cpp
SOURCES_LADDER = $(SRC_DIR)/ladder.cpp $(SRC_DIR)/ladder_main.cpp

# Executables
DIJKSTRA_EXE = dijkstras
LADDER_EXE = ladder

# Default target - build both programs
all: $(DIJKSTRA_EXE) $(LADDER_EXE)

# Compile Dijkstra's Algorithm
$(DIJKSTRA_EXE): $(SOURCES_DIJKSTRA)
	$(CXX) $(CXXFLAGS) $^ -o $@

# Compile Word Ladder
$(LADDER_EXE): $(SOURCES_LADDER)
	$(CXX) $(CXXFLAGS) $^ -o $@

# Clean all build files
clean:
	rm -f $(DIJKSTRA_EXE) $(LADDER_EXE)
