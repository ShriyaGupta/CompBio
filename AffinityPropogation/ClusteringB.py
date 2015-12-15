import numpy as np
from sklearn.cluster import AffinityPropagation
inp_file_b = open("pairwise/CG_set/Family_1/B.net","r")
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
j = 0
X = np.matrix(mat_b)
#print(X)
af= AffinityPropagation(preference=-58).fit(X)
cluster_centers_indices = af.cluster_centers_indices_
b_labels = af.labels_
n_clusters_ = len(cluster_centers_indices)
print('Estimated number of clusters: %d' % n_clusters_)
#print(max(b_labels))
# if b_labels==128:
#     print("128 ")
b_cluster_num = [0]*n_clusters_
b_cluster_deg = [0]*n_clusters_
b_clusters = [[]]*n_clusters_
count = 0
#print(b_labels)
for i in b_labels:
     count = count + 1
     b_cluster_num[i] = b_cluster_num[i] + 1
     b_cluster_deg[i] = b_cluster_deg[i] + deg_b[count-1]
     b_clusters[i].append(count-1)
#print(b_cluster_num)
#print(b_cluster_deg)
b_index = [i[0] for i in sorted(enumerate(b_cluster_deg), key=lambda x:x[1])]
#print(b_index[0])
count1 = 0
count2 = 0
count3 = 0
for i in range(0,4000):
    if b_labels[i]==b_index[0]:
        b_labels[i]=b_index[1]
fp_b = [0]*(n_clusters_+1)
for k in range(0,n_clusters_):
    fp_b[k+1] = open("b"+str(k+1)+".dat","w")
mat = []
row = 0
for k in range(0,n_clusters_):
    print("\nwriting to b"+str(k+1))
    for i in b_clusters[k]:
        mat.append([])
        for j in b_clusters[k]:
            mat[row].append(mat_b[i][j])
            fp_b[k+1].write(str(mat_b[i][j]))
            fp_b[k+1].write(" ")
        fp_b[k+1].write("\n")
        row = row + 1
    mat = []
    row = 0
