fp_align1 = open("node_align1","r") 
fp_align2 = open("node_align2","r") 
fp_align3 = open("node_align3","r") 
fp_align4 = open("node_align4","r") 
aligned_nodes = []
lines = fp_align1.readlines()
for line in lines:
	l = line.strip().split('\t')
	aligned_nodes.append((l[0],l[1])) 
lines = fp_align2.readlines()
for line in lines:
	l = line.strip().split('\t')
	aligned_nodes.append((l[0],l[1])) 
lines = fp_align3.readlines()
for line in lines:
	l = line.strip().split('\t')
	aligned_nodes.append((l[0],l[1])) 
lines = fp_align4.readlines()
for line in lines:
	l = line.strip().split('\t')
	aligned_nodes.append((l[0],l[1])) 
print aligned_nodes
fg1 = open("../../../NAPAbench/pairwise/CG_set/Family_1/A.fo","r")
fg2 = open("../../../NAPAbench/pairwise/CG_set/Family_1/B.fo","r")
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
for t in aligned_nodes:
	if(f1[int(t[0])-1] == f2[int(t[1])-1]):
		print t	
		corr = corr + 1
	else:
		wrong  = wrong + 1
print float(float(corr)/float(wrong+corr))
