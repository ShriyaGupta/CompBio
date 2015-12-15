#!/usr/bin/env python

#this code is a courtesy of https://github.com/koteth/python_mcl/blob/master/mcl/mcl_clustering.py
# It is licensed under MIT. The MIT license and copyright notice is included

import numpy as np
import networkx as nx

match_dict_score = {}
alignedNodes = {}

def normalize(A):
    column_sums = A.sum(axis=0)
    new_matrix = A / column_sums[np.newaxis, :]
    return new_matrix

def inflate(A, inflate_factor):
    return normalize(np.power(A, inflate_factor))

def expand(A, expand_factor):
    return np.linalg.matrix_power(A, expand_factor)

def add_diag(A, mult_factor):
    return A + mult_factor * np.identity(A.shape[0])

def get_clusters(A):
    clusters = []
    for i, r in enumerate((A>0).tolist()):
        if r[i]:
            clusters.append(A[i,:]>0)

    clust_map  ={}
    for cn , c in enumerate(clusters):
        for x in  [ i for i, x in enumerate(c) if x ]:
            clust_map[cn] = clust_map.get(cn, [])  + [x]
    return clust_map

def draw(G, A, cluster_map):
    import networkx as nx
    import matplotlib.pyplot as plt

    clust_map = {}
    for k, vals in cluster_map.items():
        for v in vals:
            clust_map[v] = k

    colors = []
    for i in range(len(G.nodes())):
        colors.append(clust_map.get(i, 100))

    pos = nx.spring_layout(G)

    from matplotlib.pylab import matshow, show, cm
    plt.figure(2)
    nx.draw_networkx_nodes(G, pos,node_size = 200, node_color =colors , cmap=plt.cm.Blues )
    nx.draw_networkx_edges(G,pos, alpha=0.5)
    matshow(A, fignum=1, cmap=cm.gray)
    plt.show()
    show()


def stop(M, i):

    if i%5==4:
        m = np.max( M**2 - M) - np.min( M**2 - M)
        if m==0:
            return True

    return False


def match(node_a, node_b):
    fp_sim = open("C:/Users/mahathi/Documents/academics/compbio/project/NAPAbench/NAPAbench/pairwise/CG_set/Family_1/A-B.sim","r")
    lines = fp_sim.readlines();
    for line in lines:
        l = line.strip().split('\t')
        if int(l[0][1:]) == int(node_a) and int(l[1][1:]) == int(node_b):
            fp_sim.close()
            return float(l[2])

    fp_sim.close()
    return 0

def getNodeclosestto(node_a):
    fp_sim = open("C:/Users/mahathi/Documents/academics/compbio/project/NAPAbench/NAPAbench/pairwise/CG_set/Family_1/A-B.sim","r")
    lines = fp_sim.readlines();
    for line in lines:
        l = line.strip().split('\t')
        if int(l[0][1:]) == int(node_a):
            fp_sim.close()
            return int(l[1][1:])

def getsubGraph(clusters_b, node_b):
    for k, vals in clusters_b.items():
        if node_b in vals:
            return vals

def alignSubgraph(list_a, list_b):
    #print "dummy"
    for i in list_a:
        for j in list_b:
            matchScore = match(i, j)
            if matchScore  > match_dict_score[i]:
                match_dict_score[i] = matchScore
                alignedNodes[i] = j
    return alignedNodes

def align(clusters_a, clusters_b):
    print "aligning clusters of a and b"
    #take a node from a
    clustVal_a = clusters_a.values()
    clustLen = clustVal_a.__len__()
    for i in range(1, clustLen):
        list_a = clustVal_a.pop()
        #get an item from a list
        node_a = list_a[0]
        #check similarity scores with b
        node_b = getNodeclosestto(node_a)
        #find list with this node_b
        list_b = getsubGraph(clusters_b, node_b)
        #this will align a subgraph of a to subgraph of b and store in global hashtable
        if list_a is not None and list_b is not None:
            alignedNodes = alignSubgraph(list_a, list_b)
        # calculate accuracy of hashtable




def mcl(M, expand_factor = 2, inflate_factor = 2, max_loop = 10 , mult_factor = 1):
    M = add_diag(M, mult_factor)
    M = normalize(M)

    for i in range(max_loop):
        M = inflate(M, inflate_factor)
        M = expand(M, expand_factor)
        if stop(M, i): break

    clusters = get_clusters(M)
    return M, clusters

def networkx_mcl(G, expand_factor = 2, inflate_factor = 2, max_loop = 10 , mult_factor = 1):
    import networkx as nx
    A = nx.adjacency_matrix(G)
    return mcl(np.array(A.todense()), expand_factor, inflate_factor, max_loop, mult_factor)


def get_graph(csv_filename):
    import networkx as nx

    M = []
    for r in open(csv_filename):
        r = r.strip().split(",")
        M.append( map( lambda x: float(x.strip()), r))

    G = nx.from_numpy_matrix(np.matrix(M))
    return np.array(M), G

def clusters_to_output(clusters):
        print "Clusters:"
        for k, v in clusters.items():
            print k, v

if __name__ == '__main__':

    inp_file = open("C:/Users/mahathi/Documents/academics/compbio/project/NAPAbench/NAPAbench/pairwise/CG_set/Family_1/A.net","r")
    lines = inp_file.readlines()
    mat_a = []
    deg_a = []
    for i in range(0,3000):
	mat_a.append([])
	deg_a.append(0)
	for j in range(0,3000):
		mat_a[i].append(0)
    for line in lines:
	    tuple = line.strip().split()
	    deg_a[int(tuple[0][1:])-1] = deg_a[int(tuple[0][1:])-1] + 1
	    mat_a[int(tuple[0][1:])-1][int(tuple[1][1:])-1] = 1
	    mat_a[int(tuple[1][1:])-1][int(tuple[0][1:])-1] = 1
    j = 0
    print mat_a[1168][1169]
    print mat_a[1168][1170]
    print mat_a[1168][1176]
    print mat_a[1168][1179]
    print mat_a[1168][1182]
    print mat_a[1168][1184]
    print mat_a[1168][1194]
    print mat_a[1168][1200]
    G = nx.from_numpy_matrix(np.matrix(mat_a))
    print "evaluating clusters..."
    M, clusters_a = networkx_mcl(G, expand_factor = 2,
                               inflate_factor = 6,
                               max_loop = 5,
                               mult_factor = 1)
    print "done\n"

    clusters_to_output(clusters_a)


    inp_file_b = open("C:/Users/mahathi/Documents/academics/compbio/project/NAPAbench/NAPAbench/pairwise/CG_set/Family_1/B.net","r")
    lines = inp_file_b.readlines()
    mat_b = []
    deg_b = []

    for i in range(0,4000):
        mat_b.append([])
	deg_b.append(0)
        for j in range(0,4000):
                mat_b[i].append(0)

    for line in lines:
        tuple = line.strip().split()
	deg_b[int(tuple[0][1:])-1] = deg_b[int(tuple[0][1:])-1] + 1
        mat_b[int(tuple[0][1:])-1][int(tuple[1][1:])-1] = 1
        mat_b[int(tuple[1][1:])-1][int(tuple[0][1:])-1] = 1

    G_b = nx.from_numpy_matrix(np.matrix(mat_b))

    print "evaluating clusters...of b"
    M, clusters_b = networkx_mcl(G_b, expand_factor = 2,
                               inflate_factor = 6,
                               max_loop = 5,
                               mult_factor = 1)
    print "done\n"

    clusters_to_output(clusters_b)

    for i in range(1,4000):
        match_dict_score[i] = 0

    align(clusters_a, clusters_b)
    print alignedNodes

    #calculate accuracy
    fg1 = open("C:/Users/mahathi/Documents/academics/compbio/project/NAPAbench/NAPAbench/pairwise/CG_set/Family_1/A.fo","r")
    fg2 = open("C:/Users/mahathi/Documents/academics/compbio/project/NAPAbench/NAPAbench/pairwise/CG_set/Family_1/B.fo","r")

    f1 = []
    for i in range(0,3000):
	f1.append(0)
    lines = fg1.readlines()

    for line in lines:
	    r = line.strip().split('\t')
	    #print r[0][1:]
	    f1[int(r[0][1:])-1] = int(r[1][2:])

    f2 = []
    for i in range(0,4000):
	    f2.append(0)

    lines = fg2.readlines()
    for line in lines:
	    r = line.strip().split('\t')
	    print r[1][2:]
	    f2[int(r[0][1:])-1] = int(r[1][2:])

    corr = 0
    wrong = 0

    for k,v in alignedNodes:
        if(f1[int(k)-1] == f2[int(v)-1]):
		corr = corr + 1
	else:
		wrong  = wrong + 1

    print float(float(corr)/float(wrong+corr))
    #draw(G, M, clusters)

