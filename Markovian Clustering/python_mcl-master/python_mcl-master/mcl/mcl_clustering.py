#!/usr/bin/env python

#this code is a courtesy of https://github.com/koteth/python_mcl/blob/master/mcl/mcl_clustering.py
# It is licensed under MIT. The MIT license and copyright notice is included

import numpy as np
import networkx as nx

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
    M, clusters = networkx_mcl(G, expand_factor = 2,
                               inflate_factor = 6,
                               max_loop = 9,
                               mult_factor = 1)
    print "done\n"

    clusters_to_output(clusters)


    draw(G, M, clusters)

