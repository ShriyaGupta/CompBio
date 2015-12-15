function []=get_align_cp(a_index,b_index)
    a_size = size(a_index);
    addpath('netalign/matlab/')
    for i = 1:a_size(1,2)
        i
        d = char(strcat('a',[cellfun(@num2str,a_index(i),'un',0).'],'.dat'));
        %d = char(strcat('a',num2str(a_index(i)),'.dat'));
        a1_mat = load(d);
        size(a1_mat)
        a1 = sparse(a1_mat);
        d = char(strcat('b',[cellfun(@num2str,b_index(i),'un',0).'],'.dat'));
        %d = char(strcat('b',num2str(b_index(i)),'.dat'));
        b1_mat = load(d);
        size(b1_mat)
        b1 = sparse(b1_mat);
        d = char(strcat('a_b',num2str(i),'.dat'));
        a_b1_mat = load(d);
        size(a_b1_mat)
        a_b1 = sparse(a_b1_mat);
        [S1,w1,li1,lj1] = netalign_setup(a1,b1,a_b1);
        x1 = netalignbp(S1,w1,0,1,li1,lj1);
        [ma1 mb1 mi1 overlap1 weight1] = mwmround(x1,S1,w1,li1,lj1);
        [ma1,mb1];
        fp_1 = fopen(char(strcat('node_align',num2str(i),'.dat')),'w');
        for ii = 1:size(ma1,1)
            fprintf(fp_1,'%d\t%d\n',ma1(ii,1),mb1(ii,1));
        end
        fclose(fp_1);
    end
end
