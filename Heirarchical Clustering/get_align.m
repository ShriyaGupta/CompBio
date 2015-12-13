addpath(genpath('.\netalign'));
function []=get_align(a_cluster, b_cluster, clusters, filepath)
	
	for i = 0 : (clusters-1)
		a = sparse(load(filepath+'\a'+int2str(i)+'.dat'));
		b = sparse(load(filepath+'\b'+int2str(i)+'.dat'));
		a_b = sparse(load(filepath+'\cluster'+int2str(i)+'.dat'));
		[S,w,li,lj] = netalign_setup(a,b,a_b);
		x = netalignbp(S,w,0,1,li,lj);
		[ma mb mi overlap weight] = mwmround(x,S,w,li,lj);
		fp = fopen('node_align'+str(i),'w');
		for j = 1:size(ma1,1)
			fprintf(fp,'%d\t%d\n',ma(j,1),mb(j,1));
		end
		fclose(fp);
	end
   
end

