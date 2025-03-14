#include "dijkstras.h"

int main() {
    string filename = "src/small.txt";

    Graph G;
    try {
        file_to_graph(filename, G);
    } catch (const exception& e) {
        cerr << e.what() << endl;
        return 1;
    }

    int source = 0;
    vector<int> previous(G.numVertices, -1);
    vector<int> distances = dijkstra_shortest_path(G, source, previous);

    for (int i = 0; i < G.numVertices; i++) {
        vector<int> path = extract_shortest_path(distances, previous, i);
        print_path(path, distances[i]);
    }

    return 0;
}
