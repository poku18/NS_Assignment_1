library(igraph)
nodes <- read.csv("Vertices.csv", header=TRUE)
edges <- read.csv("Edges.csv",header=TRUE)

airports <- graph_from_data_frame(edges, nodes, directed=FALSE)
customizing <- layout_(airports, as_tree())
plot(airports, layout=customizing)