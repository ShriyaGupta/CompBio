fp = open("../../../project/NAPAbench/NAPAbench/pairwise/CG_set/Family_1/A-B.sim","r")
fp_out = open("a_b.dat","w")
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
	
for i in range(0,3000):
        for j in range(0,4000):
                fp_out.write(str(mat[i][j]))
fp.close()
fp_out.close()
