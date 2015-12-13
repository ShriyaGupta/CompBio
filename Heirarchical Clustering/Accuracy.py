from fileinput import close
from HeirarchyMain import aligned_nodes

class Accuracy :
    
    
    def FO_accuracy(self, aligned_nodes, an, bn, fp):
        
        fg1 = open(fp+"\\A.fo","r")
        fg2 = open(fp+"\\B.fo","r")
        f1 = [0 for row in range(an)]
        for line in fg1.readlines():
            line = line.strip().split('\t')
            f1[int(line[0][1:])-1] = int(line[1][2:])
        close(fg1)
        print("loaded functional groups of network A")
        
        f2 = [0 for row in range(bn)]
        for line in fg2.readlines():
            line = line.strip().split('\t')
            f2[int(line[0][1:])-1] = int(line[1][2:])
        close(fg2)
        print("loaded functional groups of network B")
           
        corr = 0
        wrong = 0
        for t in aligned_nodes:
            if(f1[int(t[0])-1] == f2[int(t[1])-1]):
                corr = corr + 1
            else:
                wrong  = wrong + 1
        print("Finished comparing functional groups")
        return float(float(corr)/float(wrong+corr))
 
    
    def edge_accurarcy(self, aligned_nodes, A, B):
        pos = 0
        neg = 0
        for i in xrange(len(aligned_nodes)):
            for j in xrange(i+1, len(aligned_nodes), 1) :
                if A[aligned_nodes[i][0]][aligned_nodes[j][0]] == B[aligned_nodes[i][1]][aligned_nodes[j][1]] :
                    pos += 1
                else :
                    neg += 1
             
        print("Finished comparing edges")
        return float(float(pos)/float(pos+neg))
    