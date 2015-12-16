aligned_nodes = []
for iter in range(0,127):
	fp_align1 = open("node_align" + str(iter+1) +".dat","r")
	lines = fp_align1.readlines()
	for line in lines:
        	l = line.strip().split('\t')
	        aligned_nodes.append((a_clusters[a_index[iter]-1][int(l[0])-1],b_clusters[b_index[iter]-1][int(l[1])-1]))
#print aligned_nodes
fg1 = open("pairwise/CG_set/Family_1/A.fo","r")
fg2 = open("../NAPAbench/pairwise/CG_set/Family_1/B.fo","r")
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
                print(t)
                corr = corr + 1
        else:
                wrong  = wrong + 1
	for s in aligned_nodes:
		if(mat_a[int(t[0])][int(s[0])] == mat_b[int(t[1])][int(s[1])]):
			if mat_a[int(t[0])][int(s[0])] == 1:
				print(t)
				print(s)
				print(mat_a[int(t[0])][int(s[0])])
				print('\n')
			edge_corr = edge_corr+1
		else:
			edge_wrong = edge_wrong + 1
print(float(float(corr)/float(wrong+corr)))
print(float(float(edge_corr-len(aligned_nodes))/float(edge_wrong+edge_corr-len(aligned_nodes))))
edge_corr = 0
edge_wrong = 0