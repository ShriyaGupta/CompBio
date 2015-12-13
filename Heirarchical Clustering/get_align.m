function get_align(a_cluster, b_cluster, clusters, filepath)
	addpath('.\netalign\matlab');
        filepath = 'C:\workspaces\python\CSE549proj\src\NAPAbench\pairwise\CG_set\Family_1'
		acl = '3'
		bcl = '0'
		a = sparse(load(char(strcat(filepath,'\a',acl,'.dat'))))
		b = sparse(load(char(strcat(filepath,'\b',bcl,'.dat'))))
		a_b = sparse(load(char(strcat(filepath,'\cluster','0','.dat'))));
		size(a)
		size(b)
		size(a_b)
		[S,w,li,lj] = netalign_setup(a,b,a_b);
		x = netalignbp(S,w,0,1,li,lj);
		[ma mb mi overlap weight] = mwmround(x,S,w,li,lj);
		fp = fopen(strcat(filepath,'node_align','0'),'w');
		for j = 1:size(ma1,1)
			fprintf(fp,'%d\t%d\n',ma(j,1),mb(j,1));
		end
		fclose(fp);
	
   
end

