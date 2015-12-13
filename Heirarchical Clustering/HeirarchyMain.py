import os
import sys
import re
import numpy as np
import networkx as nx
from HeirarchichalClustering import HeirarchicalCLusutering
from fileinput import close
import matlab.engine
from Accuracy import Accuracy

arg=sys.argv

#gs = GraphStructures()
hc = HeirarchicalCLusutering()
n_clu = arg[4]
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
    close(Afile)
    print("after loading adjacency matrix for network A") 
    
    i = 0
    Bnodes=4000
    BAM = np.zeros(shape=(Bnodes,Bnodes))
    Bfile = open(filepath+'\\B_AM.txt', 'r')
    for line in Afile.readlines() :
        #print line
        line = list(re.sub("\[|,|\]", "", line).split( ))
        BAM[i] = [ int(x) for x in line ]
        i += 1
    close(Bfile)
    print("after loading adjacency matrix for network B")   
    
    ADM = np.zeros(shape=(Anodes,Anodes))
    i = 0
    Afile = open(filepath+'\\A_DM.txt', 'r')
    for line in Afile.readlines() :
        line = list(re.sub("\[|,|\]", "", line).split( ))
        ADM[i] = [ int(x) for x in line ]
        i += 1
    close(Afile)
    print("after loading distance matrix A")
    
    BDM = np.zeros(shape=(Anodes,Anodes))
    i = 0
    Bfile = open(filepath+'\\A_DM.txt', 'r')
    for line in Afile.readlines() :
        line = list(re.sub("\[|,|\]", "", line).split( ))
        BDM[i] = [ int(x) for x in line ]
        i += 1
    close(Bfile)
    print("after loading distance matrix B")
    
    ##perform clustering
    a_labels = hc.sp_connectivity(ADM, AAM, n_clu)
    print("after clustering ntework A with connectivity")
    b_labels = hc.sp_connectivity(ADM, AAM, n_clu)
    print("after clustering ntework B with connectivity")
    
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
    mat = []
    row = 0
    for i in xrange(n_clu):
        fp = open(filepath+"\\a"+str(i)+".dat","w")
        for i in a_clusters[i]:
            for j in a_clusters[0]:
                mat[row].append(AAM[i][j])
                fp.write(str(AAM[i][j]))
                fp.write(" ")
            fp.write("\n")
            row = row + 1
        close(fp)
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
    mat = []
    row = 0
    for i in xrange(n_clu):
        fp = open(filepath+"\\b"+str(i)+".dat","w")
        for i in b_clusters[i]:
            for j in b_clusters[0]:
                mat[row].append(BAM[i][j])
                fp.write(str(BAM[i][j]))
                fp.write(" ")
            fp.write("\n")
            row = row + 1
        close(fp)
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
    A_B = np.zeros(shape=(Anodes,Bnodes))
    for line in lines:
        l = line.strip().split('\t')
        A_B[int(l[0][1:])-1][int(l[1][1:])-1] = float(l[2])
    close(fp)
    print("A-B.sim file loaded")
    
    #write similarity files
    for i in xrange(n_clu) :
        fp = open(filepath+"\\cluster"+str(i)+".dat", "w")
        for j in a_cl_coeff[i]:
            for k in b_cl_coeff[i]:
                fp.write(str(A_B[i][j]) + " ")
            fp.write("\n")
        close(fp)
        print("similarity cluster file "+str(i)+" for networks "+str(a_cl_coeff[i])+" and "+str(b_cl_coeff[i])+" written")
        
    
    ##perform node alignment
    eng = matlab.engine.start_matlab()
    eng.get_align(a_cl_coeff, b_cl_coeff, n_clu, filepath)
    
    ##calculate accuracy
    aligned_nodes = []
    ac = Accuracy()
    
    for i in xrange(n_clu) :
        fp = open("node_align"+str(i),"r")
        for line in fp.readlines() :
            line = line.strip().split('\t')
            aligned_nodes.append((a_clusters[i][line[0]], b_clusters[i][line[1]]))
        close(fp)
        print("cluster "+str(i)+" alignment loaded")
        
    fo_acc = ac.FO_accuracy(aligned_nodes, Anodes, Bnodes, filepath)
    print("fo_acc is ")
    print fo_acc
    
    edge_acc = ac.edge_accurarcy(aligned_nodes, AAM, BAM)
    print("edge_acc is ")
    print edge_acc

    
    
    