import os
import sys
import re
import numpy as np
import networkx as nx
from HeirarchichalClustering import HeirarchicalCLusutering
import matlab.engine
from Accuracy import Accuracy

arg=sys.argv

#gs = GraphStructures()
hc = HeirarchicalCLusutering()
n_clu = int(arg[4])
if(arg[1] == 'pairwise') :
    print("working on pairwise data set")    
    
    filepath = os.getcwd()+'\\NAPAbench\\'+arg[1]+'\\'+arg[2]+'\\'+arg[3]
    ##read files
    i = 0
    Anodes=3000
    AAM = np.zeros(shape=(Anodes,Anodes))
    Afile = open(filepath+'\\A_AM.txt', 'r')
    for line in Afile.readlines() :
        #print line
        line = list(re.sub("\[|,|\]", "", line).split( ))
        AAM[i] = [ int(x) for x in line ]
        i += 1
    Afile.close()
    print("after loading adjacency matrix for network A") 
    
    i = 0
    Bnodes=4000
    BAM = np.zeros(shape=(Bnodes,Bnodes))
    Bfile = open(filepath+'\\B_AM.txt', 'r')
    for line in Bfile.readlines() :
        #print line
        line = list(re.sub("\[|,|\]", "", line).split( ))
        BAM[i] = [ int(x) for x in line ]
        i += 1
    Bfile.close()
    print("after loading adjacency matrix for network B")   
    
    ADM = np.zeros(shape=(Anodes,Anodes))
    i = 0
    Afile = open(filepath+'\\A_DM.txt', 'r')
    for line in Afile.readlines() :
        line = list(re.sub("\[|,|\]", "", line).split( ))
        ADM[i] = [ int(x) for x in line ]
        i += 1
    Afile.close()
    print("after loading distance matrix A")
    
    BDM = np.zeros(shape=(Bnodes,Bnodes))
    i = 0
    Bfile = open(filepath+'\\B_DM.txt', 'r')
    for line in Bfile.readlines() :
        line = list(re.sub("\[|,|\]", "", line).split( ))
        BDM[i] = [ int(x) for x in line ]
        i += 1
    Bfile.close()
    print("after loading distance matrix B")
    
    ##perform clustering
    a_labels = hc.sp_connectivity(ADM, AAM, int(n_clu), Anodes)
    #a_labels = hc.sp_connectivity(ADM, None, int(n_clu), Anodes)
    #a_labels = hc.sp_connectivity(AAM, None, int(n_clu), Anodes)
    print("after clustering network A with connectivity")
    b_labels = hc.sp_connectivity(BDM, BAM, int(n_clu), Bnodes)
    #b_labels = hc.sp_connectivity(BDM, None, int(n_clu), Bnodes)
    #b_labels = hc.sp_connectivity(BAM, None, int(n_clu), Bnodes)
    print("after clustering network B with connectivity")
    
    ##create cluster adjacency matrix
    a_cl_coeff = [0 for row in range(n_clu)] #cluster coefficient used for finding distances between clusters of a and b
    b_cl_coeff = [0 for row in range(n_clu)]
    a_clusters = [[] for row in range(n_clu)]
    j = 0
    
    #nodes in each cluster a
    for i in a_labels:
        j = j + 1
        a_clusters[i].append(j-1) 
    print("identified node in each cluster of network A")
        
    #write clusters a
    
    
    for i in xrange(n_clu):
        fp = open(filepath+"\\a"+str(i)+".dat","w")
        mat = [[] for row in range(len(a_clusters[i]))]
        row = 0
        for j in a_clusters[i]:
            for k in a_clusters[i]:
                mat[row].append(int(AAM[j][k]))
                fp.write(str(int(AAM[j][k])))
                fp.write(" ")
            fp.write("\n")
            row = row + 1
        fp.close()
        m = np.array(mat)
        G = nx.to_networkx_graph(m, None, False)
        a_cl_coeff[i] = nx.average_clustering(G, None, None, True)
        print("cluster file "+str(i)+" for network A written")
        
    
    b_clusters = [[] for row in range(n_clu)]
    j = 0
    #nodes in each cluster a
    for i in b_labels:
        j = j + 1
        b_clusters[i].append(j-1) 
    print("identified node in each cluster of network B")
        
    #write clusters b

    
    for i in xrange(n_clu):
        fp = open(filepath+"\\b"+str(i)+".dat","w")
        mat = [[] for row in range(len(b_clusters[i]))]
        row = 0
        for j in b_clusters[i]:
            for k in b_clusters[i]:
                mat[row].append(int(BAM[j][k]))
                fp.write(str(int(BAM[j][k])))
                fp.write(" ")
            fp.write("\n")
            row = row + 1
        fp.close()
        m = np.array(mat)
        G = nx.to_networkx_graph(m, None, False)
        a_cl_coeff[i] = nx.average_clustering(G, None, None, True)
        print("cluster file "+str(i)+" for network B written")
    
    ##identify clusters to be aligned
    
    a_cl_coeff = [i[0] for i in sorted(enumerate(a_cl_coeff), key=lambda x:x[1])]
    b_cl_coeff = [i[0] for i in sorted(enumerate(b_cl_coeff), key=lambda x:x[1])]
    
    #load A-B similariy
    fp = open(filepath+"\\A-B.sim","r")
    lines = fp.readlines()
    A_B = [[0 for col in range(Bnodes)] for row in range(Anodes)]
    for line in lines:
        line = line.strip().split('\t')
        A_B[int(line[0][1:])-1][int(line[1][1:])-1] = float(line[2])
    fp.close()
    print("A-B.sim file loaded")
    
    print a_cl_coeff[0]
    print b_cl_coeff[0]
    print a_clusters[a_cl_coeff[0]]
    print b_clusters[b_cl_coeff[0]]
    #write similarity files
    for i in xrange(n_clu) :
        fp = open(filepath+"\\cluster"+str(i)+".dat", "w")
        for j in a_clusters[a_cl_coeff[i]]:
            for k in b_clusters[b_cl_coeff[i]]:
                fp.write(str(A_B[j][k]) + " ")
            fp.write("\n")
        fp.close()
        print("similarity cluster file "+str(i)+" for networks "+str(a_cl_coeff[i])+" and "+str(b_cl_coeff[i])+" written")
        
    
    ##perform node alignment
    eng = matlab.engine.start_matlab()
    eng.get_align(a_cl_coeff, b_cl_coeff, n_clu, filepath,nargout=0)
    
    ##calculate accuracy
    aligned_nodes = []
    ac = Accuracy()
    
    for i in xrange(n_clu) :
        fp = open(filepath+"\\node_align"+str(i),"r")
        for line in fp.readlines() :
            line = line.strip().split('\t')
            aligned_nodes.append((a_clusters[a_cl_coeff[i]][int(line[0]) - 1], b_clusters[b_cl_coeff[i]][int(line[1]) - 1]))
        fp.close()
        print("cluster "+str(i)+" alignment loaded")
        
    fo_acc = ac.FO_accuracy(aligned_nodes, Anodes, Bnodes, filepath)
    print("fo_acc is ")
    print fo_acc
    
    edge_acc = ac.edge_accurarcy(aligned_nodes, AAM, BAM)
    print("edge_acc is ")
    print edge_acc

    
    
    