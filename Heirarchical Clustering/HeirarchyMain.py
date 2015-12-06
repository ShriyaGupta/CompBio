import os
import sys
from GraphStructures import GraphStructures


arg=sys.argv

gs = GraphStructures()

if(arg[1] == 'pairwise') :
    #Anodes=3000
    #Afile = open(os.getcwd()+'\\NAPAbench\\'+arg[1]+'\\'+arg[2]+'\\'+arg[3]+'\\A.net', 'r')
    #Agraph = gs.createGraph(Afile, Anodes)
    #AM = gs.createAdjacencyMatrix(Agraph, Anodes)
    #ADM = gs.createDistMatrix(Agraph, Anodes)
    
    Bnodes=4000
    Bfile = open(os.getcwd()+'\\NAPAbench\\'+arg[1]+'\\'+arg[2]+'\\'+arg[3]+'\\B.net', 'r')
    Bgraph = gs.createGraph(Bfile, Bnodes)
    BM = gs.createAdjacencyMatrix(Bgraph, Bnodes)
    BDM = gs.createDistMatrix(Bgraph, Bnodes)
    