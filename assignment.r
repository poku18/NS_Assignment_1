library(igraph)
nodes <- read.csv("Vertices.csv", header=TRUE)
edges <- read.csv("Edges.csv",header=TRUE)

airports <- graph_from_data_frame(edges, nodes, directed=FALSE)

#Q1: number of edges and nodes
vCount = vcount(airports)
eCount = ecount(airports)

#Q3: 
deg <- degree(airports, mode="all")
meanDeg = mean(deg)
# most connected: YYZ
#least connected: YDA

#Q4 : Histogram generation
x = hist(deg)

#Q5 :Adjacency matrix generation and Symmetry test
matrix_var=as.matrix(get.adjacency(airports))
isSymmetric(matrix_var)

#Layout of the graph
customizing <- layout_(airports, on_grid())

#Plotting the graph
plot(airports, vertex.size=deg + 10,layout=customizing)       # Using degree to adjust the vertex size for better readability of the generated graph
