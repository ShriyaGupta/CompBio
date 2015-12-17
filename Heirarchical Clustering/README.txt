********************************************
Name : Saketa Chandra Chalamchala
SBUID : 110162209
Project : Heirarchical Network Alignment
********************************************

Softwares to install :

- Anaconda2 : for python2.7 interpreter with scikit.learn package
- networkx : package for python
- Matlab R2
- netalign - package for matlab at https://www.cs.purdue.edu/homes/dgleich/codes/netalign/. Extract the netalign-online-20110227.tar.gz to folder netalign.
		After successful extraction you should find the following file under the folder ./netalign/matlab/netalignbp.m
		Replace ./netalign/matlab/netalignbp.m with ./netalignbp.m


**********************************************************************		
Preparing files :
		
To perform Heirarchical clustering on networks we need to build Adjacency Matrix and Distance Matrices for the networks.
To generate the matrices place the network files "A.net" and "B.net" under the folder
/NAPABench/pairwise/<dataset_name>/<Family_name>/A.net
/NAPABench/pairwise/<dataset_name>/<Family_name>/B.net
The current process uses CG_set dataset which has 5 families (e.g. Family_1, Family_2..)

to generate the files run the following python script :

python StoreMatrix.py pairwise <dataset_name> <Family_name>

**********************************************************************
Performing clustering and alignment :

run the following python script :
python StoreMatrix.py pairwise <dataset_name> <Family_name> <no.of clusters>

The accuracy measures will be printed on the console and cluster files will be available in :
/NAPABench/pairwise/<dataset_name>/<Family_name>/

************************************************************************



