function []=get_align(a_index,b_index)
    addpath('netalign/matlab/')
    d = char(strcat('a',[cellfun(@num2str,a_index(1),'un',0).'],'.dat'));
    a1 = sparse(load(d))
    a2 = sparse(load(char(strcat('a',[cellfun(@num2str,a_index(2),'un',0).'],'.dat'))));
    a3 = sparse(load(char(strcat('a',[cellfun(@num2str,a_index(3),'un',0).'],'.dat'))));
    a4 = sparse(load(char(strcat('a',[cellfun(@num2str,a_index(4),'un',0).'],'.dat'))));
    b1 = sparse(load(char(strcat('b',[cellfun(@num2str,b_index(1),'un',0).'],'.dat'))));
    b2 = sparse(load(char(strcat('b',[cellfun(@num2str,b_index(2),'un',0).'],'.dat'))));
    b3 = sparse(load(char(strcat('b',[cellfun(@num2str,b_index(3),'un',0).'],'.dat'))));
    b4 = sparse(load(char(strcat('b',[cellfun(@num2str,b_index(4),'un',0).'],'.dat'))));
    a_b1 = sparse(load('a_b1.dat'));
    a_b2 = sparse(load('a_b2.dat'));
    a_b3 = sparse(load('a_b3.dat'));
    a_b4 = sparse(load('a_b4.dat'));
    [S1,w1,li1,lj1] = netalign_setup(a1,b1,a_b1);
    x1 = netalignbp(S1,w1,0,1,li1,lj1);
    [ma1 mb1 mi1 overlap1 weight1] = mwmround(x1,S1,w1,li1,lj1);
    [ma1,mb1];
    [S2,w2,li2,lj2] = netalign_setup(a2,b2,a_b2);
    x2 = netalignbp(S2,w2,0,1,li2,lj2);
    [ma2 mb2 mi2 overlap2 weight2] = mwmround(x2,S2,w2,li2,lj2);
    [ma2,mb2];
    [S3,w3,li3,lj3] = netalign_setup(a3,b3,a_b3);
    x3 = netalignbp(S3,w3,0,1,li3,lj3);
    [ma3 mb3 mi3 overlap3 weight3] = mwmround(x3,S3,w3,li3,lj3);
    [ma3,mb3];
    [S4,w4,li4,lj4] = netalign_setup(a4,b4,a_b4);
    x4 = netalignbp(S4,w4,0,1,li4,lj4);
    [ma4 mb4 mi4 overlap4 weight4] = mwmround(x4,S4,w4,li4,lj4);
    [ma4,mb4];
    size(a_b1)
    size(a_b2)
    size(a_b3)
    size(a_b4)
    fp_1 = fopen('node_align1.dat','w');
    for ii = 1:size(ma1,1)
        fprintf(fp_1,'%d\t%d\n',ma1(ii,1),mb1(ii,1));
    end
    fclose(fp_1);
    fp_2 = fopen('node_align2.dat','w');
    for ii = 1:size(ma2,1)
        fprintf(fp_2,'%d\t%d\n',ma2(ii,1),mb2(ii,1));
    end
    fclose(fp_2);
    fp_3 = fopen('node_align3.dat','w');
    for ii = 1:size(ma3,1)
        fprintf(fp_3,'%d\t%d\n',ma3(ii,1),mb3(ii,1));
    end
    fclose(fp_3);
    fp_4 = fopen('node_align4.dat','w');
    for ii = 1:size(ma4,1)
        fprintf(fp_4,'%d\t%d\n',ma4(ii,1),mb4(ii,1));
    end
    fclose(fp_4);
end