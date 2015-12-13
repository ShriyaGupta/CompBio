fp = open("../NAPAbench/pairwise/CG_set/Family_1/A-B.sim","r")
fp_out = open("a_b.dat","w")
lines = fp.readlines()
mat = []
for i in range(0,3000):
	mat.append([])
	for j in range(0,4000):
		mat[i].append(0)
for line in lines:
	l = line.strip().split('\t')
	mat[int(l[0][1:])-1][int(l[1][1:])-1] = float(l[2])
	
for i in range(0,3000):
        for j in range(0,4000):
                fp_out.write(str(mat[i][j]) + " ")
	fp_out.write("\n")
mat_a = []
for i in range(0,3000):
        mat_a.append([])
        for j in range(0,3000):
                mat_a[i].append(0)
fp_a = open("../NAPAbench/pairwise/CG_set/Family_1/A.net","r")
lines = fp_a.readlines()
for line in lines:
        tuple = line.strip().split()
        mat_a[int(tuple[0][1:])-1][int(tuple[1][1:])-1] = 1
        mat_a[int(tuple[1][1:])-1][int(tuple[0][1:])-1] = 1
fp_a_out = open("a.dat","w")
for i in range(0,3000):
	for j in range(0,3000):
		fp_a_out.write(str(mat_a[i][j]) + " ")
	fp_a_out.write("\n")
mat_b = []
for i in range(0,4000):
        mat_b.append([])
        for j in range(0,4000):
                mat_b[i].append(0)
fp_b = open("../NAPAbench/pairwise/CG_set/Family_1/B.net","r")
lines = fp_b.readlines()
for line in lines:
        tuple = line.strip().split()
        mat_b[int(tuple[0][1:])-1][int(tuple[1][1:])-1] = 1
        mat_b[int(tuple[1][1:])-1][int(tuple[0][1:])-1] = 1
fp_b_out = open("b.dat","w")
for i in range(0,4000):
        for j in range(0,4000):
                fp_b_out.write(str(mat_b[i][j]) + " ")
        fp_b_out.write("\n")
fp.close()
fp_out.close()
fp_a_out.close()
fp_b_out.close()
fp_align1 = open("global_node_align","r")
aligned_nodes = []
lines = fp_align1.readlines()
for line in lines:
        l = line.strip().split('\t')
        aligned_nodes.append((l[0],l[1]))
print aligned_nodes
fg1 = open("../NAPAbench/pairwise/CG_set/Family_1/A.fo","r")
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
        print r[1][2:]
        f2[int(r[0][1:])-1] = int(r[1][2:])
print f1[2440]
print f2[2973]
corr = 0
wrong = 0
edge_corr = 0
edge_wrong = 0
for t in aligned_nodes:
        if(f1[int(t[0])] == f2[int(t[1])]):
                #print t
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
print edge_wrong
