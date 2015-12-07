import numpy as np
from sklearn.cluster import spectral_clustering
inp_file = open("../NAPAbench/pairwise/CG_set/Family_1/A.net","r")
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
G = np.matrix(mat_a)
a_labels = spectral_clustering(G, n_clusters=4, n_components=None, eigen_solver=None, random_state=None, n_init=10,eigen_tol=0.0, assign_labels='kmeans')
a_cluster_num = [0,0,0,0]
a_cluster_deg = [0,0,0,0]
a_clusters = [[],[],[],[]]
j = 0
for i in a_labels:
	j = j + 1
	a_cluster_num[i] = a_cluster_num[i] + 1
	a_cluster_deg[i] = a_cluster_deg[i] + deg_a[j-1]
	a_clusters[i].append(j-1)	
fp_a1 = open("a1.dat","w")
fp_a2 = open("a2.dat","w")
fp_a3 = open("a3.dat","w")
fp_a4 = open("a4.dat","w")
mat = []
row = 0
for i in a_clusters[0]:
	mat.append([])
	for j in a_clusters[0]: 	
		mat[row].append(mat_a[i][j])
		fp_a1.write(str(mat_a[i][j]))
		fp_a1.write(" ")
	fp_a1.write("\n") 
	row = row + 1
mat = []
row = 0
for i in a_clusters[1]:
	mat.append([])
	for j in a_clusters[1]: 	
		mat[row].append(mat_a[i][j])
		fp_a2.write(str(mat_a[i][j]))
		fp_a2.write(" ")
	fp_a2.write("\n") 
	row = row + 1
mat = []
row = 0
for i in a_clusters[2]:
	mat.append([])
	for j in a_clusters[2]: 	
		mat[row].append(mat_a[i][j])
		fp_a3.write(str(mat_a[i][j]))
		fp_a3.write(" ")
	fp_a3.write("\n") 
	row = row + 1
mat = []
row = 0
for i in a_clusters[3]:
	mat.append([])
	for j in a_clusters[3]: 	
		mat[row].append(mat_a[i][j])
		fp_a4.write(str(mat_a[i][j]))
		fp_a4.write(" ")
	fp_a4.write("\n") 
	row = row + 1
inp_file_b = open("../NAPAbench/pairwise/CG_set/Family_1/A.net","r")
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
b_labels = spectral_clustering(G_b, n_clusters=4, n_components=None, eigen_solver=None, random_state=None, n_init=10,eigen_tol=0.0, assign_labels='kmeans')
b_cluster_num = [0,0,0,0]
b_cluster_deg = [0,0,0,0]
b_clusters = [[],[],[],[]]
j = 0
for i in b_labels:
        j = j + 1
        b_cluster_num[i] = b_cluster_num[i] + 1
        b_cluster_deg[i] = b_cluster_deg[i] + deg_b[j-1]
	b_clusters[i].append(j-1)
fp_b1 = open("b1.dat","w")
fp_b2 = open("b2.dat","w")
fp_b3 = open("b3.dat","w")
fp_b4 = open("b4.dat","w")
mat = []
row = 0
for i in b_clusters[0]:
	mat.append([])
	for j in b_clusters[0]: 	
		mat[row].append(mat_b[i][j])
		fp_b1.write(str(mat_b[i][j]))
		fp_b1.write(" ")
	fp_b1.write("\n") 
	row = row + 1
mat = []
row = 0
for i in b_clusters[1]:
	mat.append([])
	for j in b_clusters[1]: 	
		mat[row].append(mat_b[i][j])
		fp_b2.write(str(mat_b[i][j]))
		fp_b2.write(" ")
	fp_b2.write("\n") 
	row = row + 1
mat = []
row = 0
for i in b_clusters[2]:
	mat.append([])
	for j in b_clusters[2]: 	
		mat[row].append(mat_b[i][j])
		fp_b3.write(str(mat_b[i][j]))
		fp_b3.write(" ")
	fp_b3.write("\n") 
	row = row + 1
mat = []
row = 0
for i in b_clusters[3]:
	mat.append([])
	for j in b_clusters[3]: 	
		mat[row].append(mat_b[i][j])
		fp_b4.write(str(mat_b[i][j]))
		fp_b4.write(" ")
	fp_b4.write("\n") 
print a_cluster_num
print a_cluster_deg
print b_cluster_num
print b_cluster_deg
fp = open("../../../project/NAPAbench/NAPAbench/pairwise/CG_set/Family_1/A-B.sim","r")
lines = fp.readlines()
mat = []
for i in range(0,3000):
        mat.append([])
        for j in range(0,4000):
                mat[i].append(0)
for line in lines:
        l = line.strip().split('\t')
        print int(l[0][1:])
        mat[int(l[0][1:])-1][int(l[1][1:])-1] = float(l[2])
fp_a1_b4 = open("a1_b4.dat","w") 
for i in a_clusters[0]:
	for j in b_clusters[3]:
		fp_a1_b4.write(str(mat[i][j]) + " ")
	fp_a1_b4.write("\n")
fp_a2_b1 = open("a2_b1.dat","w") 
for i in a_clusters[1]:
	for j in b_clusters[0]:
		fp_a2_b1.write(str(mat[i][j]) + " ")
	fp_a2_b1.write("\n")
fp_a3_b3 = open("a3_b3.dat","w") 
for i in a_clusters[2]:
	for j in b_clusters[2]:
		fp_a3_b3.write(str(mat[i][j]) + " ")
	fp_a3_b3.write("\n")
fp_a4_b2 = open("a4_b2.dat","w") 
for i in a_clusters[3]:
	for j in b_clusters[1]:
		fp_a4_b2.write(str(mat[i][j]) + " ")
	fp_a4_b2.write("\n")
			
