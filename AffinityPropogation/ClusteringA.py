import numpy as np
from sklearn.cluster import AffinityPropagation
inp_file = open("pairwise/CG_set/Family_1/A.net","r")
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
X = np.matrix(mat_a)
#print(X)
af= AffinityPropagation(preference=-50).fit(X)
cluster_centers_indices = af.cluster_centers_indices_
a_labels = af.labels_
n_clusters_ = len(cluster_centers_indices)
print('Estimated number of clusters: %d' % n_clusters_)
#print(max(b_labels))
# if b_labels==128:
#     print("128 ")
a_cluster_num = [0]*n_clusters_
a_cluster_deg = [0]*n_clusters_
a_clusters = [[]]*n_clusters_
count = 0
#print(b_labels)
for i in a_labels:
     count = count + 1
     a_cluster_num[i] = a_cluster_num[i] + 1
     a_cluster_deg[i] = a_cluster_deg[i] + deg_a[count-1]
     a_clusters[i].append(count-1)
#print(b_cluster_num)
#print(b_cluster_deg)
a_index = [i[0] for i in sorted(enumerate(a_cluster_deg), key=lambda x:x[1])]
#print(b_index[0])

for i in range(0,3000):
    if a_labels[i]==a_index[0]:
        a_labels[i]=a_index[1]
fp_a = [0]*(n_clusters_+1)

for k in range(0,n_clusters_):
    fp_a[k+1] = open("a"+str(k+1)+".dat","w")

mat = []
row = 0
for k in range(0,n_clusters_):
    print("\nwriting to a"+str(k+1))
    for i in a_clusters[k]:
        mat.append([])
        for j in a_clusters[k]:
            mat[row].append(mat_a[i][j])
            fp_a[k+1].write(str(mat_a[i][j]))
            fp_a[k+1].write(" ")
        fp_a[k+1].write("\n")
        row = row + 1
    mat = []
    row = 0
