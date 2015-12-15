import matlab.engine
import numpy as np
from sklearn.cluster import spectral_clustering
inp_num_clusters = input('Give the number of clusters: ')
inp_family_num = input('Give the family number: ')
inp_file = open("../NAPAbench/pairwise/CG_set/Family_" + str(inp_family_num) + "/A.net","r")
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
a_cluster_num = []
a_cluster_deg = []
a_clusters = []
b_cluster_num = []
b_cluster_deg = []
b_clusters = []
G = np.matrix(mat_a)
a_labels = spectral_clustering(G, n_clusters=int(inp_num_clusters), n_components=None, eigen_solver=None, random_state=None, n_init=10,eigen_tol=0.0, assign_labels='discretize')
for i in range(0,inp_num_clusters):
	a_cluster_num.append(0)	
	a_cluster_deg.append(0)	
	a_clusters.append([])	
j = 0
for i in a_labels:
	j = j + 1
	a_cluster_num[i] = a_cluster_num[i] + 1
	a_cluster_deg[i] = a_cluster_deg[i] + deg_a[j-1]
	a_clusters[i].append(j-1)	
for iter in range(0,inp_num_clusters):	
	fp_a1 = open("a" + str(iter+1) + ".dat","w")
	mat = []
	row = 0
	for i in a_clusters[iter]:
		mat.append([])
		for j in a_clusters[iter]: 	
			mat[row].append(mat_a[i][j])
			fp_a1.write(str(mat_a[i][j]))
			fp_a1.write(" ")
		fp_a1.write("\n") 
		row = row + 1
	fp_a1.close()
inp_file_b = open("../NAPAbench/pairwise/CG_set/Family_" + str(inp_family_num) + "/B.net","r")
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
G_b = np.matrix(mat_b)
b_labels = spectral_clustering(G_b, n_clusters=int(inp_num_clusters), n_components=None, eigen_solver=None, random_state=None, n_init=10,eigen_tol=0.0, assign_labels='discretize')
for i in range(0,inp_num_clusters):
        b_cluster_num.append(0)
        b_cluster_deg.append(0)
        b_clusters.append([])  
j = 0
for i in b_labels:
        j = j + 1
        b_cluster_num[i] = b_cluster_num[i] + 1
        b_cluster_deg[i] = b_cluster_deg[i] + deg_b[j-1]
	b_clusters[i].append(j-1)
for iter in range(0,inp_num_clusters):	
	fp_a1 = open("b" + str(iter+1) + ".dat","w")
	mat = []
	row = 0
	for i in b_clusters[iter]:
		mat.append([])
		for j in b_clusters[iter]: 	
			mat[row].append(mat_b[i][j])
			fp_a1.write(str(mat_b[i][j]))
			fp_a1.write(" ")
		fp_a1.write("\n") 
		row = row + 1
	fp_a1.close()
print a_cluster_num
print a_cluster_deg
print b_cluster_num
print b_cluster_deg
b_index = [i[0] for i in sorted(enumerate(b_cluster_deg), key=lambda x:x[1])]
a_index = [i[0] for i in sorted(enumerate(a_cluster_deg), key=lambda x:x[1])]
print a_index
print b_index
print mat_b[0][0:20]
fp = open("../../../project/NAPAbench/NAPAbench/pairwise/CG_set/Family_" + str(inp_family_num)  + "/A-B.sim","r")
lines = fp.readlines()
mat = []
for i in range(0,3000):
        mat.append([])
        for j in range(0,4000):
                mat[i].append(0)
for line in lines:
        l = line.strip().split('\t')
        #print int(l[0][1:])
        mat[int(l[0][1:])-1][int(l[1][1:])-1] = float(l[2])
for iter in range(0,inp_num_clusters):
	fp_a1_b1 = open("a_b" + str(iter+1) + ".dat","w") 
	for i in a_clusters[a_index[iter]]:
		for j in b_clusters[b_index[iter]]:
			fp_a1_b1.write(str(mat[i][j]) + " ")
		fp_a1_b1.write("\n")
	fp_a1_b1.close()
a_index = [x+1 for x in a_index]
b_index = [x+1 for x in b_index]
print a_index
print b_index
eng = matlab.engine.start_matlab()
eng.get_align_cp(a_index,b_index,nargout=0)
aligned_nodes = []
for iter in range(0,inp_num_clusters):
	fp_align1 = open("node_align" + str(iter+1) +".dat","r")
	lines = fp_align1.readlines()
	for line in lines:
        	l = line.strip().split('\t')
	        aligned_nodes.append((a_clusters[a_index[iter]-1][int(l[0])-1],b_clusters[b_index[iter]-1][int(l[1])-1]))
#print aligned_nodes
fg1 = open("../NAPAbench/pairwise/CG_set/Family_"+ str(inp_family_num) +"/A.fo","r")
fg2 = open("../NAPAbench/pairwise/CG_set/Family_"+ str(inp_family_num) +"/B.fo","r")
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
        #print r[1][2:]
        f2[int(r[0][1:])-1] = int(r[1][2:])
corr = 0
wrong = 0
edge_corr = 0
edge_wrong = 0
for t in aligned_nodes:
        if(f1[int(t[0])] == f2[int(t[1])]):
                print t
                corr = corr + 1
        else:
                wrong  = wrong + 1
	for s in aligned_nodes:
		if(mat_a[int(t[0])][int(s[0])] == mat_b[int(t[1])][int(s[1])]):
			if mat_a[int(t[0])][int(s[0])] == 1:
				print t
				print s
				print mat_a[int(t[0])][int(s[0])]
				print '\n'
			edge_corr = edge_corr+1
		else:
			edge_wrong = edge_wrong + 1	
print float(float(corr)/float(wrong+corr))
print float(float(edge_corr-len(aligned_nodes))/float(edge_wrong+edge_corr-len(aligned_nodes)))
edge_corr = 0
edge_wrong = 0
