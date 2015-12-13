# Authors: Gael Varoquaux, Nelle Varoquaux
# License: BSD 3 clause

import time
import matplotlib.pyplot as plt
import numpy as np

from sklearn.cluster import AgglomerativeClustering
from sklearn.neighbors import kneighbors_graph

# Generate sample data
# Create a graph capturing local connectivity. Larger number of neighbors
# will give more homogeneous clusters to the cost of computation
# time. A very large number of neighbors gives more evenly distributed
# cluster sizes, but may not impose the local manifold structure of
# the data
class HeirarchicalCLusutering :
    def knn_connectivity(self, X):
        knn_graph = kneighbors_graph(X, 30, include_self=False)
    
        for connectivity in (None, knn_graph):
                n_clusters = 4
                plt.figure(figsize=(10, 4))
                for index, linkage in enumerate(('average', 'complete', 'ward')):
                    plt.subplot(1, 3, index + 1)
                    model = AgglomerativeClustering(linkage=linkage,
                                                connectivity=connectivity,
                                                n_clusters=n_clusters)
                    t0 = time.time()
                    model.fit(X)
                    elapsed_time = time.time() - t0
                    plt.scatter(X[:, 0], X[:, 1], c=model.labels_,
                            cmap=plt.cm.spectral)
                    plt.title('linkage=%s (time %.2fs)' % (linkage, elapsed_time),
                          fontdict=dict(verticalalignment='top'))
                    plt.axis('equal')
                    plt.axis('off')
    
                    plt.subplots_adjust(bottom=0, top=.89, wspace=0,
                                    left=0, right=1)
                    plt.suptitle('n_cluster=%i, connectivity=%r' %
                             (n_clusters, connectivity is not None), size=17)
    
    
        plt.show()
        
        
    def sp_connectivity(self,X,connectivity, n_clusters):
            
           # plt.figure(figsize=(10, 4))
            
     #       plt.subplot(1, 3, index + 1)
            model = AgglomerativeClustering(linkage="ward",
                                               connectivity=connectivity,
                                                n_clusters=n_clusters)
            #t0 = time.time()
            y = np.zeros(shape=(3000))
            y = model.fit_predict(X, None)
            #elapsed_time = time.time() - t0
            return y
            
            
            
            #plt.scatter(X[:, 0], X[:, 1], c=model.labels_,
             #           cmap=plt.cm.spectral)
            #plt.title('linkage=%s (time %.2fs)' % (linkage, elapsed_time),
              #           fontdict=dict(verticalalignment='top'))
            #plt.axis('equal')
            #plt.axis('off')
            #plt.subplots_adjust(bottom=0, top=.89, wspace=0,
              #                      left=0, right=1)
            #    plt.suptitle('n_cluster=%i, connectivity=%r' %
             #                (n_clusters, connectivity is not None), size=17)
    
    
            #plt.show()