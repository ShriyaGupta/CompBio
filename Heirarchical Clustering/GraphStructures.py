import networkx as nx
import re

class GraphStructures:
    
    def createGraph(self, file, nodes):
        G = nx.empty_graph(nodes, None)
        #print G.nodes(False)
        for line in file :
            edge = line.split( )
            G.add_edge(int(re.sub("\D", "", edge[0]))-1, int(re.sub("\D", "", edge[1]))-1)
        #print G.edges(None, False, None)            
        return G
    
    def createAdjacencyMatrix(self,G, n):
        #n = nx.number_of_nodes(G)
        #print nx.number_of_edges(G)
        AM = [[0 for col in range(n)] for row in range(n)]
        for edge in G.edges_iter() :
            #print edge[0] + " " + edge[1]
            AM[int(edge[0])][int(edge[1])] = 1
        file = open("C:\\workspaces\\B_AM.txt", "w")
        file.writelines(["%s\n" % item  for item in AM])   
        #print AM
        #return AM
        return AM
    
    # Hamming distance - Shortest path between two nodes
    def createDistMatrix(self,G,n):
        DM = [[0 for col in range(n)] for row in range(n)]
        
        #print G.edges(None, False, None)
        #print nx.shortest_path(G,source=0,target=2999)
        
        print("here")
        
        #DM=nx.shortest_path(G)
        
        for i in xrange(n) :
            for j in xrange(i+1,n,1):
                try : 
                    DM[i][j] = len(nx.shortest_path(G,source=i,target=j))
                    #print DM[i][j]
                except :
                    continue
                DM[j][i] = DM[i][j] 
                
        print("here")
                
        file = open("C:\\workspaces\\A_DM.txt", "w")
        file.writelines(["%s\n" % item  for item in DM])
        #return DM
        return 1