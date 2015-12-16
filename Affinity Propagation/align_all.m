function []=align_all()
    addpath('netalign/matlab')
    disp('Loading a clusters')
    a1 = sparse(importdata('a1.dat'));
    disp('Loaded one') 
    a2 = sparse(importdata('a2.dat'));
    a3 = sparse(importdata('a3.dat'));
    a4 = sparse(importdata('a4.dat'));
    a5 = sparse(importdata('a5.dat'));
    a6 = sparse(importdata('a6.dat'));
    a7 = sparse(importdata('a7.dat'));
    a8 = sparse(importdata('a8.dat'));
    a9 = sparse(importdata('a9.dat'));
    a10 = sparse(importdata('a10.dat'));
    a11 = sparse(importdata('a11.dat'));
    a12 = sparse(importdata('a12.dat'));
    a13 = sparse(importdata('a13.dat'));
    a14 = sparse(importdata('a14.dat'));
    a15 = sparse(importdata('a15.dat'));
    a16 = sparse(importdata('a16.dat'));
    a17 = sparse(importdata('a17.dat'));
    a18 = sparse(importdata('a18.dat'));
    a19 = sparse(importdata('a19.dat'));
    a20 = sparse(importdata('a20.dat'));
    a21 = sparse(importdata('a21.dat'));
    a22 = sparse(importdata('a22.dat'));
    a23 = sparse(importdata('a23.dat'));
    a24 = sparse(importdata('a24.dat'));
    a25 = sparse(importdata('a25.dat'));
    a26 = sparse(importdata('a26.dat'));
    a27 = sparse(importdata('a27.dat'));
    a28 = sparse(importdata('a28.dat'));
    a29 = sparse(importdata('a29.dat'));
    a30 = sparse(importdata('a30.dat'));
    a31 = sparse(importdata('a31.dat'));
    a32 = sparse(importdata('a32.dat'));
    a33 = sparse(importdata('a33.dat'));
    a34 = sparse(importdata('a34.dat'));
    a35 = sparse(importdata('a35.dat'));
    a36 = sparse(importdata('a36.dat'));
    a37 = sparse(importdata('a37.dat'));
    a38 = sparse(importdata('a38.dat'));
    a39 = sparse(importdata('a39.dat'));
    a40 = sparse(importdata('a40.dat'));
    a41 = sparse(importdata('a41.dat'));
    a42 = sparse(importdata('a42.dat'));
    a43 = sparse(importdata('a43.dat'));
    a44 = sparse(importdata('a44.dat'));
    a45 = sparse(importdata('a45.dat'));
    a46 = sparse(importdata('a46.dat'));
    a47 = sparse(importdata('a47.dat'));
    a48 = sparse(importdata('a48.dat'));
    a49 = sparse(importdata('a49.dat'));
    a50 = sparse(importdata('a50.dat'));
    a51 = sparse(importdata('a51.dat'));
    a52 = sparse(importdata('a52.dat'));
    a53 = sparse(importdata('a53.dat'));
    a54 = sparse(importdata('a54.dat'));
    a55 = sparse(importdata('a55.dat'));
    a56 = sparse(importdata('a56.dat'));
    a57 = sparse(importdata('a57.dat'));
    a58 = sparse(importdata('a58.dat'));
    a59 = sparse(importdata('a59.dat'));
    a60 = sparse(importdata('a60.dat'));
    a61 = sparse(importdata('a61.dat'));
    a62 = sparse(importdata('a62.dat'));
    a63 = sparse(importdata('a63.dat'));
    a64 = sparse(importdata('a64.dat'));
    a65 = sparse(importdata('a65.dat'));
    disp('a midway')
    a66 = sparse(importdata('a66.dat'));
    a67 = sparse(importdata('a67.dat'));
    a68 = sparse(importdata('a68.dat'));
    a69 = sparse(importdata('a69.dat'));
    a70 = sparse(importdata('a70.dat'));
    a71 = sparse(importdata('a71.dat'));
    a72 = sparse(importdata('a72.dat'));
    a73 = sparse(importdata('a73.dat'));
    a74 = sparse(importdata('a74.dat'));
    a75 = sparse(importdata('a75.dat'));
    a76 = sparse(importdata('a76.dat'));
    a77 = sparse(importdata('a77.dat'));
    a78 = sparse(importdata('a78.dat'));
    a79 = sparse(importdata('a79.dat'));
    a80 = sparse(importdata('a80.dat'));
    a81 = sparse(importdata('a81.dat'));
    a82 = sparse(importdata('a82.dat'));
    a83 = sparse(importdata('a83.dat'));
    a84 = sparse(importdata('a84.dat'));
    a85 = sparse(importdata('a85.dat'));
    a86 = sparse(importdata('a86.dat'));
    a87 = sparse(importdata('a87.dat'));
    a88 = sparse(importdata('a88.dat'));
    a89 = sparse(importdata('a89.dat'));
    a90 = sparse(importdata('a90.dat'));
    a91 = sparse(importdata('a91.dat'));
    a92 = sparse(importdata('a92.dat'));
    a93 = sparse(importdata('a93.dat'));
    a94 = sparse(importdata('a94.dat'));
    a95 = sparse(importdata('a95.dat'));
    a96 = sparse(importdata('a96.dat'));
    a97 = sparse(importdata('a97.dat'));
    a98 = sparse(importdata('a98.dat'));
    a99 = sparse(importdata('a99.dat'));
    a100 = sparse(importdata('a100.dat'));
    a101 = sparse(importdata('a101.dat'));
    a102 = sparse(importdata('a102.dat'));
    a103 = sparse(importdata('a103.dat'));
    a104 = sparse(importdata('a104.dat'));
    a105 = sparse(importdata('a105.dat'));
    a106 = sparse(importdata('a106.dat'));
    a107 = sparse(importdata('a107.dat'));
    a108 = sparse(importdata('a108.dat'));
    a109 = sparse(importdata('a109.dat'));
    a110 = sparse(importdata('a110.dat'));
    a111 = sparse(importdata('a111.dat'));
    a112 = sparse(importdata('a112.dat'));
    a113 = sparse(importdata('a113.dat'));
    a114 = sparse(importdata('a114.dat'));
    a115 = sparse(importdata('a115.dat'));
    a116 = sparse(importdata('a116.dat'));
    a117 = sparse(importdata('a117.dat'));
    a118 = sparse(importdata('a118.dat'));
    a119 = sparse(importdata('a119.dat'));
    a120 = sparse(importdata('a120.dat'));
    a121 = sparse(importdata('a121.dat'));
    a122 = sparse(importdata('a122.dat'));
    a123 = sparse(importdata('a123.dat'));
    a124 = sparse(importdata('a124.dat'));
    a125 = sparse(importdata('a125.dat'));
    a126 = sparse(importdata('a126.dat'));
    a127 = sparse(importdata('a127.dat'));
    disp('Loading b clusters')
    b1 = sparse(importdata('b1.dat'));
    b2 = sparse(importdata('b2.dat'));
    b3 = sparse(importdata('b3.dat'));
    b4 = sparse(importdata('b4.dat'));
    b5 = sparse(importdata('b5.dat'));
    b6 = sparse(importdata('b6.dat'));
    b7 = sparse(importdata('b7.dat'));
    b8 = sparse(importdata('b8.dat'));
    b9 = sparse(importdata('b9.dat'));
    b10 = sparse(importdata('b10.dat'));
    b11 = sparse(importdata('b11.dat'));
    b12 = sparse(importdata('b12.dat'));
    b13 = sparse(importdata('b13.dat'));
    b14 = sparse(importdata('b14.dat'));
    b15 = sparse(importdata('b15.dat'));
    b16 = sparse(importdata('b16.dat'));
    b17 = sparse(importdata('b17.dat'));
    b18 = sparse(importdata('b18.dat'));
    b19 = sparse(importdata('b19.dat'));
    b20 = sparse(importdata('b20.dat'));
    b21 = sparse(importdata('b21.dat'));
    b22 = sparse(importdata('b22.dat'));
    b23 = sparse(importdata('b23.dat'));
    b24 = sparse(importdata('b24.dat'));
    b25 = sparse(importdata('b25.dat'));
    b26 = sparse(importdata('b26.dat'));
    b27 = sparse(importdata('b27.dat'));
    b28 = sparse(importdata('b28.dat'));
    b29 = sparse(importdata('b29.dat'));
    b30 = sparse(importdata('b30.dat'));
    b31 = sparse(importdata('b31.dat'));
    b32 = sparse(importdata('b32.dat'));
    b33 = sparse(importdata('b33.dat'));
    b34 = sparse(importdata('b34.dat'));
    b35 = sparse(importdata('b35.dat'));
    b36 = sparse(importdata('b36.dat'));
    b37 = sparse(importdata('b37.dat'));
    b38 = sparse(importdata('b38.dat'));
    b39 = sparse(importdata('b39.dat'));
    b40 = sparse(importdata('b40.dat'));
    b41 = sparse(importdata('b41.dat'));
    b42 = sparse(importdata('b42.dat'));
    b43 = sparse(importdata('b43.dat'));
    b44 = sparse(importdata('b44.dat'));
    b45 = sparse(importdata('b45.dat'));
    b46 = sparse(importdata('b46.dat'));
    b47 = sparse(importdata('b47.dat'));
    b48 = sparse(importdata('b48.dat'));
    b49 = sparse(importdata('b49.dat'));
    b50 = sparse(importdata('b50.dat'));
    b51 = sparse(importdata('b51.dat'));
    b52 = sparse(importdata('b52.dat'));
    b53 = sparse(importdata('b53.dat'));
    b54 = sparse(importdata('b54.dat'));
    b55 = sparse(importdata('b55.dat'));
    b56 = sparse(importdata('b56.dat'));
    b57 = sparse(importdata('b57.dat'));
    b58 = sparse(importdata('b58.dat'));
    b59 = sparse(importdata('b59.dat'));
    b60 = sparse(importdata('b60.dat'));
    b61 = sparse(importdata('b61.dat'));
    b62 = sparse(importdata('b62.dat'));
    b63 = sparse(importdata('b63.dat'));
    b64 = sparse(importdata('b64.dat'));
    disp('b midway')
    b65 = sparse(importdata('b65.dat'));
    b66 = sparse(importdata('b66.dat'));
    b67 = sparse(importdata('b67.dat'));
    b68 = sparse(importdata('b68.dat'));
    b69 = sparse(importdata('b69.dat'));
    b70 = sparse(importdata('b70.dat'));
    b71 = sparse(importdata('b71.dat'));
    b72 = sparse(importdata('b72.dat'));
    b73 = sparse(importdata('b73.dat'));
    b74 = sparse(importdata('b74.dat'));
    b75 = sparse(importdata('b75.dat'));
    b76 = sparse(importdata('b76.dat'));
    b77 = sparse(importdata('b77.dat'));
    b78 = sparse(importdata('b78.dat'));
    b79 = sparse(importdata('b79.dat'));
    b80 = sparse(importdata('b80.dat'));
    b81 = sparse(importdata('b81.dat'));
    b82 = sparse(importdata('b82.dat'));
    b83 = sparse(importdata('b83.dat'));
    b84 = sparse(importdata('b84.dat'));
    b85 = sparse(importdata('b85.dat'));
    b86 = sparse(importdata('b86.dat'));
    b87 = sparse(importdata('b87.dat'));
    b88 = sparse(importdata('b88.dat'));
    b89 = sparse(importdata('b89.dat'));
    b90 = sparse(importdata('b90.dat'));
    b91 = sparse(importdata('b91.dat'));
    b92 = sparse(importdata('b92.dat'));
    b93 = sparse(importdata('b93.dat'));
    b94 = sparse(importdata('b94.dat'));
    b95 = sparse(importdata('b95.dat'));
    b96 = sparse(importdata('b96.dat'));
    b97 = sparse(importdata('b97.dat'));
    b98 = sparse(importdata('b98.dat'));
    b99 = sparse(importdata('b99.dat'));
    b100 = sparse(importdata('b100.dat'));
    b101 = sparse(importdata('b101.dat'));
    b102 = sparse(importdata('b102.dat'));
    b103 = sparse(importdata('b103.dat'));
    b104 = sparse(importdata('b104.dat'));
    b105 = sparse(importdata('b105.dat'));
    b106 = sparse(importdata('b106.dat'));
    b107 = sparse(importdata('b107.dat'));
    b108 = sparse(importdata('b108.dat'));
    b109 = sparse(importdata('b109.dat'));
    b110 = sparse(importdata('b110.dat'));
    b111 = sparse(importdata('b111.dat'));
    b112 = sparse(importdata('b112.dat'));
    b113 = sparse(importdata('b113.dat'));
    b114 = sparse(importdata('b114.dat'));
    b115 = sparse(importdata('b115.dat'));
    b116 = sparse(importdata('b116.dat'));
    b117 = sparse(importdata('b117.dat'));
    b118 = sparse(importdata('b118.dat'));
    b119 = sparse(importdata('b119.dat'));
    b120 = sparse(importdata('b120.dat'));
    b121 = sparse(importdata('b121.dat'));
    b122 = sparse(importdata('b122.dat'));
    b123 = sparse(importdata('b123.dat'));
    b124 = sparse(importdata('b124.dat'));
    b125 = sparse(importdata('b125.dat'));
    b126 = sparse(importdata('b126.dat'));
    b127 = sparse(importdata('b127.dat'));
    disp('Loading ab mappings')
    a_b1 = sparse(importdata('a_b1.dat'));
    a_b2 = sparse(importdata('a_b2.dat'));
    a_b3 = sparse(importdata('a_b3.dat'));
    a_b4 = sparse(importdata('a_b4.dat'));
    a_b5 = sparse(importdata('a_b5.dat'));
    a_b6 = sparse(importdata('a_b6.dat'));
    a_b7 = sparse(importdata('a_b7.dat'));
    a_b8 = sparse(importdata('a_b8.dat'));
    a_b9 = sparse(importdata('a_b9.dat'));
    a_b10 = sparse(importdata('a_b10.dat'));
    a_b11 = sparse(importdata('a_b11.dat'));
    a_b12 = sparse(importdata('a_b12.dat'));
    a_b13 = sparse(importdata('a_b13.dat'));
    a_b14 = sparse(importdata('a_b14.dat'));
    a_b15 = sparse(importdata('a_b15.dat'));
    a_b16 = sparse(importdata('a_b16.dat'));
    a_b17 = sparse(importdata('a_b17.dat'));
    a_b18 = sparse(importdata('a_b18.dat'));
    a_b19 = sparse(importdata('a_b19.dat'));
    a_b20 = sparse(importdata('a_b20.dat'));
    a_b21 = sparse(importdata('a_b21.dat'));
    a_b22 = sparse(importdata('a_b22.dat'));
    a_b23 = sparse(importdata('a_b23.dat'));
    a_b24 = sparse(importdata('a_b24.dat'));
    a_b25 = sparse(importdata('a_b25.dat'));
    a_b26 = sparse(importdata('a_b26.dat'));
    a_b27 = sparse(importdata('a_b27.dat'));
    a_b28 = sparse(importdata('a_b28.dat'));
    a_b29 = sparse(importdata('a_b29.dat'));
    a_b30 = sparse(importdata('a_b30.dat'));
    a_b31 = sparse(importdata('a_b31.dat'));
    a_b32 = sparse(importdata('a_b32.dat'));
    a_b33 = sparse(importdata('a_b33.dat'));
    a_b34 = sparse(importdata('a_b34.dat'));
    a_b35 = sparse(importdata('a_b35.dat'));
    a_b36 = sparse(importdata('a_b36.dat'));
    a_b37 = sparse(importdata('a_b37.dat'));
    a_b38 = sparse(importdata('a_b38.dat'));
    a_b39 = sparse(importdata('a_b39.dat'));
    a_b40 = sparse(importdata('a_b40.dat'));
    a_b41 = sparse(importdata('a_b41.dat'));
    a_b42 = sparse(importdata('a_b42.dat'));
    a_b43 = sparse(importdata('a_b43.dat'));
    a_b44 = sparse(importdata('a_b44.dat'));
    a_b45 = sparse(importdata('a_b45.dat'));
    a_b46 = sparse(importdata('a_b46.dat'));
    a_b47 = sparse(importdata('a_b47.dat'));
    a_b48 = sparse(importdata('a_b48.dat'));
    a_b49 = sparse(importdata('a_b49.dat'));
    a_b50 = sparse(importdata('a_b50.dat'));
    a_b51 = sparse(importdata('a_b51.dat'));
    a_b52 = sparse(importdata('a_b52.dat'));
    a_b53 = sparse(importdata('a_b53.dat'));
    a_b54 = sparse(importdata('a_b54.dat'));
    a_b55 = sparse(importdata('a_b55.dat'));
    a_b56 = sparse(importdata('a_b56.dat'));
    a_b57 = sparse(importdata('a_b57.dat'));
    a_b58 = sparse(importdata('a_b58.dat'));
    a_b59 = sparse(importdata('a_b59.dat'));
    a_b60 = sparse(importdata('a_b60.dat'));
    a_b61 = sparse(importdata('a_b61.dat'));
    a_b62 = sparse(importdata('a_b62.dat'));
    a_b63 = sparse(importdata('a_b63.dat'));
    a_b64 = sparse(importdata('a_b64.dat'));
    disp('ab midway')
    a_b65 = sparse(importdata('a_b65.dat'));
    a_b66 = sparse(importdata('a_b66.dat'));
    a_b67 = sparse(importdata('a_b67.dat'));
    a_b68 = sparse(importdata('a_b68.dat'));
    a_b69 = sparse(importdata('a_b69.dat'));
    a_b70 = sparse(importdata('a_b70.dat'));
    a_b71 = sparse(importdata('a_b71.dat'));
    a_b72 = sparse(importdata('a_b72.dat'));
    a_b73 = sparse(importdata('a_b73.dat'));
    a_b74 = sparse(importdata('a_b74.dat'));
    a_b75 = sparse(importdata('a_b75.dat'));
    a_b76 = sparse(importdata('a_b76.dat'));
    a_b77 = sparse(importdata('a_b77.dat'));
    a_b78 = sparse(importdata('a_b78.dat'));
    a_b79 = sparse(importdata('a_b79.dat'));
    a_b80 = sparse(importdata('a_b80.dat'));
    a_b81 = sparse(importdata('a_b81.dat'));
    a_b82 = sparse(importdata('a_b82.dat'));
    a_b83 = sparse(importdata('a_b83.dat'));
    a_b84 = sparse(importdata('a_b84.dat'));
    a_b85 = sparse(importdata('a_b85.dat'));
    a_b86 = sparse(importdata('a_b86.dat'));
    a_b87 = sparse(importdata('a_b87.dat'));
    a_b88 = sparse(importdata('a_b88.dat'));
    a_b89 = sparse(importdata('a_b89.dat'));
    a_b90 = sparse(importdata('a_b90.dat'));
    a_b91 = sparse(importdata('a_b91.dat'));
    a_b92 = sparse(importdata('a_b92.dat'));
    a_b93 = sparse(importdata('a_b93.dat'));
    a_b94 = sparse(importdata('a_b94.dat'));
    a_b95 = sparse(importdata('a_b95.dat'));
    a_b96 = sparse(importdata('a_b96.dat'));
    a_b97 = sparse(importdata('a_b97.dat'));
    a_b98 = sparse(importdata('a_b98.dat'));
    a_b99 = sparse(importdata('a_b99.dat'));
    a_b100 = sparse(importdata('a_b100.dat'));
    a_b101 = sparse(importdata('a_b101.dat'));
    a_b102 = sparse(importdata('a_b102.dat'));
    a_b103 = sparse(importdata('a_b103.dat'));
    a_b104 = sparse(importdata('a_b104.dat'));
    a_b105 = sparse(importdata('a_b105.dat'));
    a_b106 = sparse(importdata('a_b106.dat'));
    a_b107 = sparse(importdata('a_b107.dat'));
    a_b108 = sparse(importdata('a_b108.dat'));
    a_b109 = sparse(importdata('a_b109.dat'));
    a_b110 = sparse(importdata('a_b110.dat'));
    a_b111 = sparse(importdata('a_b111.dat'));
    a_b112 = sparse(importdata('a_b112.dat'));
    a_b113 = sparse(importdata('a_b113.dat'));
    a_b114 = sparse(importdata('a_b114.dat'));
    a_b115 = sparse(importdata('a_b115.dat'));
    a_b116 = sparse(importdata('a_b116.dat'));
    a_b117 = sparse(importdata('a_b117.dat'));
    a_b118 = sparse(importdata('a_b118.dat'));
    a_b119 = sparse(importdata('a_b119.dat'));
    a_b120 = sparse(importdata('a_b120.dat'));
    a_b121 = sparse(importdata('a_b121.dat'));
    a_b122 = sparse(importdata('a_b122.dat'));
    a_b123 = sparse(importdata('a_b123.dat'));
    a_b124 = sparse(importdata('a_b124.dat'));
    a_b125 = sparse(importdata('a_b125.dat'));
    a_b126 = sparse(importdata('a_b126.dat'));
    a_b127 = sparse(importdata('a_b127.dat'));
    disp('alignment begins')
    [S1,w1,li1,lj1] = netalign_setup(a53,b52,a_b1);
    x1 = netalignbp(S1,w1,0,1,li1,lj1);
    [ma1 mb1 mi1 overlap1 weight1] = mwmround(x1,S1,w1,li1,lj1);
    [ma1,mb1];
    [S2,w2,li2,lj2] = netalign_setup(a81,b26,a_b2);
    x2 = netalignbp(S2,w2,0,1,li2,lj2);
    [ma2 mb2 mi2 overlap2 weight2] = mwmround(x2,S2,w2,li2,lj2);
    [ma2,mb2];
    [S3,w3,li3,lj3] = netalign_setup(a5,b109,a_b3);
    x3 = netalignbp(S3,w3,0,1,li3,lj3);
    [ma3 mb3 mi3 overlap3 weight3] = mwmround(x3,S3,w3,li3,lj3);
    [ma3,mb3];
    [S4,w4,li4,lj4] = netalign_setup(a67,b86,a_b4);
    x4 = netalignbp(S4,w4,0,1,li4,lj4);
    [ma4 mb4 mi4 overlap4 weight4] = mwmround(x4,S4,w4,li4,lj4);
    [ma4,mb4];
    [S5,w5,li5,lj5] = netalign_setup(a23,b11,a_b5);
    x5 = netalignbp(S5,w5,0,1,li5,lj5);
    [ma5 mb5 mi5 overlap5 weight5] = mwmround(x5,S5,w5,li5,lj5);
    [ma5,mb5];
    [S6,w6,li6,lj6] = netalign_setup(a41,b28,a_b6);
    x6 = netalignbp(S6,w6,0,1,li6,lj6);
    [ma6 mb6 mi6 overlap6 weight6] = mwmround(x6,S6,w6,li6,lj6);
    [ma6,mb6];
    [S7,w7,li7,lj7] = netalign_setup(a112,b60,a_b7);
    x7 = netalignbp(S7,w7,0,1,li7,lj7);
    [ma7 mb7 mi7 overlap7 weight7] = mwmround(x7,S7,w7,li7,lj7);
    [ma7,mb7];
    [S8,w8,li8,lj8] = netalign_setup(a124,b95,a_b8);
    x8 = netalignbp(S8,w8,0,1,li8,lj8);
    [ma8 mb8 mi8 overlap8 weight8] = mwmround(x8,S8,w8,li8,lj8);
    [ma8,mb8];
    [S9,w9,li9,lj9] = netalign_setup(a48,b69,a_b9);
    x9 = netalignbp(S9,w9,0,1,li9,lj9);
    [ma9 mb9 mi9 overlap9 weight9] = mwmround(x9,S9,w9,li9,lj9);
    [ma9,mb9];
    [S10,w10,li10,lj10] = netalign_setup(a120,b2,a_b10);
    x10 = netalignbp(S10,w10,0,1,li10,lj10);
    [ma10 mb10 mi10 overlap10 weight10] = mwmround(x10,S10,w10,li10,lj10);
    [ma10,mb10];
    [S11,w11,li11,lj11] = netalign_setup(a2,b96,a_b11);
    x11 = netalignbp(S11,w11,0,1,li11,lj11);
    [ma11 mb11 mi11 overlap11 weight11] = mwmround(x11,S11,w11,li11,lj11);
    [ma11,mb11];
    [S12,w12,li12,lj12] = netalign_setup(a86,b125,a_b12);
    x12 = netalignbp(S12,w12,0,1,li12,lj12);
    [ma12 mb12 mi12 overlap12 weight12] = mwmround(x12,S12,w12,li12,lj12);
    [ma12,mb12];
    [S13,w13,li13,lj13] = netalign_setup(a111,b66,a_b13);
    x13 = netalignbp(S13,w13,0,1,li13,lj13);
    [ma13 mb13 mi13 overlap13 weight13] = mwmround(x13,S13,w13,li13,lj13);
    [ma13,mb13];
    [S14,w14,li14,lj14] = netalign_setup(a117,b27,a_b14);
    x14 = netalignbp(S14,w14,0,1,li14,lj14);
    [ma14 mb14 mi14 overlap14 weight14] = mwmround(x14,S14,w14,li14,lj14);
    [ma14,mb14];
    [S15,w15,li15,lj15] = netalign_setup(a127,b75,a_b15);
    x15 = netalignbp(S15,w15,0,1,li15,lj15);
    [ma15 mb15 mi15 overlap15 weight15] = mwmround(x15,S15,w15,li15,lj15);
    [ma15,mb15];
    [S16,w16,li16,lj16] = netalign_setup(a70,b54,a_b16);
    x16 = netalignbp(S16,w16,0,1,li16,lj16);
    [ma16 mb16 mi16 overlap16 weight16] = mwmround(x16,S16,w16,li16,lj16);
    [ma16,mb16];
    [S17,w17,li17,lj17] = netalign_setup(a10,b74,a_b17);
    x17 = netalignbp(S17,w17,0,1,li17,lj17);
    [ma17 mb17 mi17 overlap17 weight17] = mwmround(x17,S17,w17,li17,lj17);
    [ma17,mb17];
    [S18,w18,li18,lj18] = netalign_setup(a45,b100,a_b18);
    x18 = netalignbp(S18,w18,0,1,li18,lj18);
    [ma18 mb18 mi18 overlap18 weight18] = mwmround(x18,S18,w18,li18,lj18);
    [ma18,mb18];
    [S19,w19,li19,lj19] = netalign_setup(a76,b99,a_b19);
    x19 = netalignbp(S19,w19,0,1,li19,lj19);
    [ma19 mb19 mi19 overlap19 weight19] = mwmround(x19,S19,w19,li19,lj19);
    [ma19,mb19];
    [S20,w20,li20,lj20] = netalign_setup(a71,b89,a_b20);
    x20 = netalignbp(S20,w20,0,1,li20,lj20);
    [ma20 mb20 mi20 overlap20 weight20] = mwmround(x20,S20,w20,li20,lj20);
    [ma20,mb20];
    [S21,w21,li21,lj21] = netalign_setup(a6,b88,a_b21);
    x21 = netalignbp(S21,w21,0,1,li21,lj21);
    [ma21 mb21 mi21 overlap21 weight21] = mwmround(x21,S21,w21,li21,lj21);
    [ma21,mb21];
    [S22,w22,li22,lj22] = netalign_setup(a31,b93,a_b22);
    x22 = netalignbp(S22,w22,0,1,li22,lj22);
    [ma22 mb22 mi22 overlap22 weight22] = mwmround(x22,S22,w22,li22,lj22);
    [ma22,mb22];
    [S23,w23,li23,lj23] = netalign_setup(a80,b98,a_b23);
    x23 = netalignbp(S23,w23,0,1,li23,lj23);
    [ma23 mb23 mi23 overlap23 weight23] = mwmround(x23,S23,w23,li23,lj23);
    [ma23,mb23];
    [S24,w24,li24,lj24] = netalign_setup(a93,b102,a_b24);
    x24 = netalignbp(S24,w24,0,1,li24,lj24);
    [ma24 mb24 mi24 overlap24 weight24] = mwmround(x24,S24,w24,li24,lj24);
    [ma24,mb24];
    [S25,w25,li25,lj25] = netalign_setup(a18,b1,a_b25);
    x25 = netalignbp(S25,w25,0,1,li25,lj25);
    [ma25 mb25 mi25 overlap25 weight25] = mwmround(x25,S25,w25,li25,lj25);
    [ma25,mb25];
    [S26,w26,li26,lj26] = netalign_setup(a39,b3,a_b26);
    x26 = netalignbp(S26,w26,0,1,li26,lj26);
    [ma26 mb26 mi26 overlap26 weight26] = mwmround(x26,S26,w26,li26,lj26);
    [ma26,mb26];
    [S27,w27,li27,lj27] = netalign_setup(a1,b64,a_b27);
    x27 = netalignbp(S27,w27,0,1,li27,lj27);
    [ma27 mb27 mi27 overlap27 weight27] = mwmround(x27,S27,w27,li27,lj27);
    [ma27,mb27];
    [S28,w28,li28,lj28] = netalign_setup(a77,b4,a_b28);
    x28 = netalignbp(S28,w28,0,1,li28,lj28);
    [ma28 mb28 mi28 overlap28 weight28] = mwmround(x28,S28,w28,li28,lj28);
    [ma28,mb28];
    [S29,w29,li29,lj29] = netalign_setup(a104,b63,a_b29);
    x29 = netalignbp(S29,w29,0,1,li29,lj29);
    [ma29 mb29 mi29 overlap29 weight29] = mwmround(x29,S29,w29,li29,lj29);
    [ma29,mb29];
    [S30,w30,li30,lj30] = netalign_setup(a119,b38,a_b30);
    x30 = netalignbp(S30,w30,0,1,li30,lj30);
    [ma30 mb30 mi30 overlap30 weight30] = mwmround(x30,S30,w30,li30,lj30);
    [ma30,mb30];
    [S31,w31,li31,lj31] = netalign_setup(a75,b111,a_b31);
    x31 = netalignbp(S31,w31,0,1,li31,lj31);
    [ma31 mb31 mi31 overlap31 weight31] = mwmround(x31,S31,w31,li31,lj31);
    [ma31,mb31];
    [S32,w32,li32,lj32] = netalign_setup(a87,b49,a_b32);
    x32 = netalignbp(S32,w32,0,1,li32,lj32);
    [ma32 mb32 mi32 overlap32 weight32] = mwmround(x32,S32,w32,li32,lj32);
    [ma32,mb32];
    [S33,w33,li33,lj33] = netalign_setup(a33,b18,a_b33);
    x33 = netalignbp(S33,w33,0,1,li33,lj33);
    [ma33 mb33 mi33 overlap33 weight33] = mwmround(x33,S33,w33,li33,lj33);
    [ma33,mb33];
    [S34,w34,li34,lj34] = netalign_setup(a88,b58,a_b34);
    x34 = netalignbp(S34,w34,0,1,li34,lj34);
    [ma34 mb34 mi34 overlap34 weight34] = mwmround(x34,S34,w34,li34,lj34);
    [ma34,mb34];
    [S35,w35,li35,lj35] = netalign_setup(a107,b108,a_b35);
    x35 = netalignbp(S35,w35,0,1,li35,lj35);
    [ma35 mb35 mi35 overlap35 weight35] = mwmround(x35,S35,w35,li35,lj35);
    [ma35,mb35];
    [S36,w36,li36,lj36] = netalign_setup(a82,b44,a_b36);
    x36 = netalignbp(S36,w36,0,1,li36,lj36);
    [ma36 mb36 mi36 overlap36 weight36] = mwmround(x36,S36,w36,li36,lj36);
    [ma36,mb36];
    [S37,w37,li37,lj37] = netalign_setup(a83,b106,a_b37);
    x37 = netalignbp(S37,w37,0,1,li37,lj37);
    [ma37 mb37 mi37 overlap37 weight37] = mwmround(x37,S37,w37,li37,lj37);
    [ma37,mb37];
    [S38,w38,li38,lj38] = netalign_setup(a109,b33,a_b38);
    x38 = netalignbp(S38,w38,0,1,li38,lj38);
    [ma38 mb38 mi38 overlap38 weight38] = mwmround(x38,S38,w38,li38,lj38);
    [ma38,mb38];
    [S39,w39,li39,lj39] = netalign_setup(a4,b16,a_b39);
    x39 = netalignbp(S39,w39,0,1,li39,lj39);
    [ma39 mb39 mi39 overlap39 weight39] = mwmround(x39,S39,w39,li39,lj39);
    [ma39,mb39];
    [S40,w40,li40,lj40] = netalign_setup(a22,b116,a_b40);
    x40 = netalignbp(S40,w40,0,1,li40,lj40);
    [ma40 mb40 mi40 overlap40 weight40] = mwmround(x40,S40,w40,li40,lj40);
    [ma40,mb40];
    [S41,w41,li41,lj41] = netalign_setup(a103,b35,a_b41);
    x41 = netalignbp(S41,w41,0,1,li41,lj41);
    [ma41 mb41 mi41 overlap41 weight41] = mwmround(x41,S41,w41,li41,lj41);
    [ma41,mb41];
    [S42,w42,li42,lj42] = netalign_setup(a114,b7,a_b42);
    x42 = netalignbp(S42,w42,0,1,li42,lj42);
    [ma42 mb42 mi42 overlap42 weight42] = mwmround(x42,S42,w42,li42,lj42);
    [ma42,mb42];
    [S43,w43,li43,lj43] = netalign_setup(a21,b71,a_b43);
    x43 = netalignbp(S43,w43,0,1,li43,lj43);
    [ma43 mb43 mi43 overlap43 weight43] = mwmround(x43,S43,w43,li43,lj43);
    [ma43,mb43];
    [S44,w44,li44,lj44] = netalign_setup(a49,b31,a_b44);
    x44 = netalignbp(S44,w44,0,1,li44,lj44);
    [ma44 mb44 mi44 overlap44 weight44] = mwmround(x44,S44,w44,li44,lj44);
    [ma44,mb44];
    [S45,w45,li45,lj45] = netalign_setup(a101,b82,a_b45);
    x45 = netalignbp(S45,w45,0,1,li45,lj45);
    [ma45 mb45 mi45 overlap45 weight45] = mwmround(x45,S45,w45,li45,lj45);
    [ma45,mb45];
    [S46,w46,li46,lj46] = netalign_setup(a59,b17,a_b46);
    x46 = netalignbp(S46,w46,0,1,li46,lj46);
    [ma46 mb46 mi46 overlap46 weight46] = mwmround(x46,S46,w46,li46,lj46);
    [ma46,mb46];
    [S47,w47,li47,lj47] = netalign_setup(a84,b53,a_b47);
    x47 = netalignbp(S47,w47,0,1,li47,lj47);
    [ma47 mb47 mi47 overlap47 weight47] = mwmround(x47,S47,w47,li47,lj47);
    [ma47,mb47];
    [S48,w48,li48,lj48] = netalign_setup(a94,b120,a_b48);
    x48 = netalignbp(S48,w48,0,1,li48,lj48);
    [ma48 mb48 mi48 overlap48 weight48] = mwmround(x48,S48,w48,li48,lj48);
    [ma48,mb48];
    [S49,w49,li49,lj49] = netalign_setup(a11,b42,a_b49);
    x49 = netalignbp(S49,w49,0,1,li49,lj49);
    [ma49 mb49 mi49 overlap49 weight49] = mwmround(x49,S49,w49,li49,lj49);
    [ma49,mb49];
    [S50,w50,li50,lj50] = netalign_setup(a113,b13,a_b50);
    x50 = netalignbp(S50,w50,0,1,li50,lj50);
    [ma50 mb50 mi50 overlap50 weight50] = mwmround(x50,S50,w50,li50,lj50);
    [ma50,mb50];
    [S51,w51,li51,lj51] = netalign_setup(a32,b34,a_b51);
    x51 = netalignbp(S51,w51,0,1,li51,lj51);
    [ma51 mb51 mi51 overlap51 weight51] = mwmround(x51,S51,w51,li51,lj51);
    [ma51,mb51];
    [S52,w52,li52,lj52] = netalign_setup(a36,b68,a_b52);
    x52 = netalignbp(S52,w52,0,1,li52,lj52);
    [ma52 mb52 mi52 overlap52 weight52] = mwmround(x52,S52,w52,li52,lj52);
    [ma52,mb52];
    [S53,w53,li53,lj53] = netalign_setup(a43,b50,a_b53);
    x53 = netalignbp(S53,w53,0,1,li53,lj53);
    [ma53 mb53 mi53 overlap53 weight53] = mwmround(x53,S53,w53,li53,lj53);
    [ma53,mb53];
    [S54,w54,li54,lj54] = netalign_setup(a54,b43,a_b54);
    x54 = netalignbp(S54,w54,0,1,li54,lj54);
    [ma54 mb54 mi54 overlap54 weight54] = mwmround(x54,S54,w54,li54,lj54);
    [ma54,mb54];
    [S55,w55,li55,lj55] = netalign_setup(a121,b67,a_b55);
    x55 = netalignbp(S55,w55,0,1,li55,lj55);
    [ma55 mb55 mi55 overlap55 weight55] = mwmround(x55,S55,w55,li55,lj55);
    [ma55,mb55];
    [S56,w56,li56,lj56] = netalign_setup(a126,b19,a_b56);
    x56 = netalignbp(S56,w56,0,1,li56,lj56);
    [ma56 mb56 mi56 overlap56 weight56] = mwmround(x56,S56,w56,li56,lj56);
    [ma56,mb56];
    [S57,w57,li57,lj57] = netalign_setup(a52,b105,a_b57);
    x57 = netalignbp(S57,w57,0,1,li57,lj57);
    [ma57 mb57 mi57 overlap57 weight57] = mwmround(x57,S57,w57,li57,lj57);
    [ma57,mb57];
    [S58,w58,li58,lj58] = netalign_setup(a63,b77,a_b58);
    x58 = netalignbp(S58,w58,0,1,li58,lj58);
    [ma58 mb58 mi58 overlap58 weight58] = mwmround(x58,S58,w58,li58,lj58);
    [ma58,mb58];
    [S59,w59,li59,lj59] = netalign_setup(a69,b112,a_b59);
    x59 = netalignbp(S59,w59,0,1,li59,lj59);
    [ma59 mb59 mi59 overlap59 weight59] = mwmround(x59,S59,w59,li59,lj59);
    [ma59,mb59];
    [S60,w60,li60,lj60] = netalign_setup(a37,b56,a_b60);
    x60 = netalignbp(S60,w60,0,1,li60,lj60);
    [ma60 mb60 mi60 overlap60 weight60] = mwmround(x60,S60,w60,li60,lj60);
    [ma60,mb60];
    [S61,w61,li61,lj61] = netalign_setup(a85,b37,a_b61);
    x61 = netalignbp(S61,w61,0,1,li61,lj61);
    [ma61 mb61 mi61 overlap61 weight61] = mwmround(x61,S61,w61,li61,lj61);
    [ma61,mb61];
    [S62,w62,li62,lj62] = netalign_setup(a3,b78,a_b62);
    x62 = netalignbp(S62,w62,0,1,li62,lj62);
    [ma62 mb62 mi62 overlap62 weight62] = mwmround(x62,S62,w62,li62,lj62);
    [ma62,mb62];
    [S63,w63,li63,lj63] = netalign_setup(a46,b118,a_b63);
    x63 = netalignbp(S63,w63,0,1,li63,lj63);
    [ma63 mb63 mi63 overlap63 weight63] = mwmround(x63,S63,w63,li63,lj63);
    [ma63,mb63];
    [S64,w64,li64,lj64] = netalign_setup(a105,b12,a_b64);
    x64 = netalignbp(S64,w64,0,1,li64,lj64);
    [ma64 mb64 mi64 overlap64 weight64] = mwmround(x64,S64,w64,li64,lj64);
    [ma64,mb64];
    [S65,w65,li65,lj65] = netalign_setup(a35,b20,a_b65);
    x65 = netalignbp(S65,w65,0,1,li65,lj65);
    [ma65 mb65 mi65 overlap65 weight65] = mwmround(x65,S65,w65,li65,lj65);
    [ma65,mb65];
    [S66,w66,li66,lj66] = netalign_setup(a92,b113,a_b66);
    x66 = netalignbp(S66,w66,0,1,li66,lj66);
    [ma66 mb66 mi66 overlap66 weight66] = mwmround(x66,S66,w66,li66,lj66);
    [ma66,mb66];
    [S67,w67,li67,lj67] = netalign_setup(a58,b76,a_b67);
    x67 = netalignbp(S67,w67,0,1,li67,lj67);
    [ma67 mb67 mi67 overlap67 weight67] = mwmround(x67,S67,w67,li67,lj67);
    [ma67,mb67];
    [S68,w68,li68,lj68] = netalign_setup(a12,b97,a_b68);
    x68 = netalignbp(S68,w68,0,1,li68,lj68);
    [ma68 mb68 mi68 overlap68 weight68] = mwmround(x68,S68,w68,li68,lj68);
    [ma68,mb68];
    [S69,w69,li69,lj69] = netalign_setup(a50,b123,a_b69);
    x69 = netalignbp(S69,w69,0,1,li69,lj69);
    [ma69 mb69 mi69 overlap69 weight69] = mwmround(x69,S69,w69,li69,lj69);
    [ma69,mb69];
    [S70,w70,li70,lj70] = netalign_setup(a62,b124,a_b70);
    x70 = netalignbp(S70,w70,0,1,li70,lj70);
    [ma70 mb70 mi70 overlap70 weight70] = mwmround(x70,S70,w70,li70,lj70);
    [ma70,mb70];
    [S71,w71,li71,lj71] = netalign_setup(a79,b5,a_b71);
    x71 = netalignbp(S71,w71,0,1,li71,lj71);
    [ma71 mb71 mi71 overlap71 weight71] = mwmround(x71,S71,w71,li71,lj71);
    [ma71,mb71];
    [S72,w72,li72,lj72] = netalign_setup(a57,b47,a_b72);
    x72 = netalignbp(S72,w72,0,1,li72,lj72);
    [ma72 mb72 mi72 overlap72 weight72] = mwmround(x72,S72,w72,li72,lj72);
    [ma72,mb72];
    [S73,w73,li73,lj73] = netalign_setup(a44,b14,a_b73);
    x73 = netalignbp(S73,w73,0,1,li73,lj73);
    [ma73 mb73 mi73 overlap73 weight73] = mwmround(x73,S73,w73,li73,lj73);
    [ma73,mb73];
    [S74,w74,li74,lj74] = netalign_setup(a72,b83,a_b74);
    x74 = netalignbp(S74,w74,0,1,li74,lj74);
    [ma74 mb74 mi74 overlap74 weight74] = mwmround(x74,S74,w74,li74,lj74);
    [ma74,mb74];
    [S75,w75,li75,lj75] = netalign_setup(a17,b87,a_b75);
    x75 = netalignbp(S75,w75,0,1,li75,lj75);
    [ma75 mb75 mi75 overlap75 weight75] = mwmround(x75,S75,w75,li75,lj75);
    [ma75,mb75];
    [S76,w76,li76,lj76] = netalign_setup(a19,b114,a_b76);
    x76 = netalignbp(S76,w76,0,1,li76,lj76);
    [ma76 mb76 mi76 overlap76 weight76] = mwmround(x76,S76,w76,li76,lj76);
    [ma76,mb76];
    [S77,w77,li77,lj77] = netalign_setup(a118,b92,a_b77);
    x77 = netalignbp(S77,w77,0,1,li77,lj77);
    [ma77 mb77 mi77 overlap77 weight77] = mwmround(x77,S77,w77,li77,lj77);
    [ma77,mb77];
    [S78,w78,li78,lj78] = netalign_setup(a91,b127,a_b78);
    x78 = netalignbp(S78,w78,0,1,li78,lj78);
    [ma78 mb78 mi78 overlap78 weight78] = mwmround(x78,S78,w78,li78,lj78);
    [ma78,mb78];
    [S79,w79,li79,lj79] = netalign_setup(a28,b126,a_b79);
    x79 = netalignbp(S79,w79,0,1,li79,lj79);
    [ma79 mb79 mi79 overlap79 weight79] = mwmround(x79,S79,w79,li79,lj79);
    [ma79,mb79];
    [S80,w80,li80,lj80] = netalign_setup(a38,b73,a_b80);
    x80 = netalignbp(S80,w80,0,1,li80,lj80);
    [ma80 mb80 mi80 overlap80 weight80] = mwmround(x80,S80,w80,li80,lj80);
    [ma80,mb80];
    [S81,w81,li81,lj81] = netalign_setup(a95,b81,a_b81);
    x81 = netalignbp(S81,w81,0,1,li81,lj81);
    [ma81 mb81 mi81 overlap81 weight81] = mwmround(x81,S81,w81,li81,lj81);
    [ma81,mb81];
    [S82,w82,li82,lj82] = netalign_setup(a99,b119,a_b82);
    x82 = netalignbp(S82,w82,0,1,li82,lj82);
    [ma82 mb82 mi82 overlap82 weight82] = mwmround(x82,S82,w82,li82,lj82);
    [ma82,mb82];
    [S83,w83,li83,lj83] = netalign_setup(a16,b15,a_b83);
    x83 = netalignbp(S83,w83,0,1,li83,lj83);
    [ma83 mb83 mi83 overlap83 weight83] = mwmround(x83,S83,w83,li83,lj83);
    [ma83,mb83];
    [S84,w84,li84,lj84] = netalign_setup(a7,b40,a_b84);
    x84 = netalignbp(S84,w84,0,1,li84,lj84);
    [ma84 mb84 mi84 overlap84 weight84] = mwmround(x84,S84,w84,li84,lj84);
    [ma84,mb84];
    [S85,w85,li85,lj85] = netalign_setup(a74,b94,a_b85);
    x85 = netalignbp(S85,w85,0,1,li85,lj85);
    [ma85 mb85 mi85 overlap85 weight85] = mwmround(x85,S85,w85,li85,lj85);
    [ma85,mb85];
    [S86,w86,li86,lj86] = netalign_setup(a125,b65,a_b86);
    x86 = netalignbp(S86,w86,0,1,li86,lj86);
    [ma86 mb86 mi86 overlap86 weight86] = mwmround(x86,S86,w86,li86,lj86);
    [ma86,mb86];
    [S87,w87,li87,lj87] = netalign_setup(a100,b91,a_b87);
    x87 = netalignbp(S87,w87,0,1,li87,lj87);
    [ma87 mb87 mi87 overlap87 weight87] = mwmround(x87,S87,w87,li87,lj87);
    [ma87,mb87];
    [S88,w88,li88,lj88] = netalign_setup(a96,b121,a_b88);
    x88 = netalignbp(S88,w88,0,1,li88,lj88);
    [ma88 mb88 mi88 overlap88 weight88] = mwmround(x88,S88,w88,li88,lj88);
    [ma88,mb88];
    [S89,w89,li89,lj89] = netalign_setup(a110,b45,a_b89);
    x89 = netalignbp(S89,w89,0,1,li89,lj89);
    [ma89 mb89 mi89 overlap89 weight89] = mwmround(x89,S89,w89,li89,lj89);
    [ma89,mb89];
    [S90,w90,li90,lj90] = netalign_setup(a61,b8,a_b90);
    x90 = netalignbp(S90,w90,0,1,li90,lj90);
    [ma90 mb90 mi90 overlap90 weight90] = mwmround(x90,S90,w90,li90,lj90);
    [ma90,mb90];
    [S91,w91,li91,lj91] = netalign_setup(a30,b21,a_b91);
    x91 = netalignbp(S91,w91,0,1,li91,lj91);
    [ma91 mb91 mi91 overlap91 weight91] = mwmround(x91,S91,w91,li91,lj91);
    [ma91,mb91];
    [S92,w92,li92,lj92] = netalign_setup(a25,b61,a_b92);
    x92 = netalignbp(S92,w92,0,1,li92,lj92);
    [ma92 mb92 mi92 overlap92 weight92] = mwmround(x92,S92,w92,li92,lj92);
    [ma92,mb92];
    [S93,w93,li93,lj93] = netalign_setup(a123,b30,a_b93);
    x93 = netalignbp(S93,w93,0,1,li93,lj93);
    [ma93 mb93 mi93 overlap93 weight93] = mwmround(x93,S93,w93,li93,lj93);
    [ma93,mb93];
    [S94,w94,li94,lj94] = netalign_setup(a68,b6,a_b94);
    x94 = netalignbp(S94,w94,0,1,li94,lj94);
    [ma94 mb94 mi94 overlap94 weight94] = mwmround(x94,S94,w94,li94,lj94);
    [ma94,mb94];
    [S95,w95,li95,lj95] = netalign_setup(a9,b32,a_b95);
    x95 = netalignbp(S95,w95,0,1,li95,lj95);
    [ma95 mb95 mi95 overlap95 weight95] = mwmround(x95,S95,w95,li95,lj95);
    [ma95,mb95];
    [S96,w96,li96,lj96] = netalign_setup(a122,b101,a_b96);
    x96 = netalignbp(S96,w96,0,1,li96,lj96);
    [ma96 mb96 mi96 overlap96 weight96] = mwmround(x96,S96,w96,li96,lj96);
    [ma96,mb96];
    [S97,w97,li97,lj97] = netalign_setup(a24,b55,a_b97);
    x97 = netalignbp(S97,w97,0,1,li97,lj97);
    [ma97 mb97 mi97 overlap97 weight97] = mwmround(x97,S97,w97,li97,lj97);
    [ma97,mb97];
    [S98,w98,li98,lj98] = netalign_setup(a29,b51,a_b98);
    x98 = netalignbp(S98,w98,0,1,li98,lj98);
    [ma98 mb98 mi98 overlap98 weight98] = mwmround(x98,S98,w98,li98,lj98);
    [ma98,mb98];
    [S99,w99,li99,lj99] = netalign_setup(a78,b84,a_b99);
    x99 = netalignbp(S99,w99,0,1,li99,lj99);
    [ma99 mb99 mi99 overlap99 weight99] = mwmround(x99,S99,w99,li99,lj99);
    [ma99,mb99];
    [S100,w100,li100,lj100] = netalign_setup(a26,b10,a_b100);
    x100 = netalignbp(S100,w100,0,1,li100,lj100);
    [ma100 mb100 mi100 overlap100 weight100] = mwmround(x100,S100,w100,li100,lj100);
    [ma100,mb100];
    [S101,w101,li101,lj101] = netalign_setup(a102,b29,a_b101);
    x101 = netalignbp(S101,w101,0,1,li101,lj101);
    [ma101 mb101 mi101 overlap101 weight101] = mwmround(x101,S101,w101,li101,lj101);
    [ma101,mb101];
    [S102,w102,li102,lj102] = netalign_setup(a64,b85,a_b102);
    x102 = netalignbp(S102,w102,0,1,li102,lj102);
    [ma102 mb102 mi102 overlap102 weight102] = mwmround(x102,S102,w102,li102,lj102);
    [ma102,mb102];
    [S103,w103,li103,lj103] = netalign_setup(a40,b72,a_b103);
    x103 = netalignbp(S103,w103,0,1,li103,lj103);
    [ma103 mb103 mi103 overlap103 weight103] = mwmround(x103,S103,w103,li103,lj103);
    [ma103,mb103];
    [S104,w104,li104,lj104] = netalign_setup(a51,b22,a_b104);
    x104 = netalignbp(S104,w104,0,1,li104,lj104);
    [ma104 mb104 mi104 overlap104 weight104] = mwmround(x104,S104,w104,li104,lj104);
    [ma104,mb104];
    [S105,w105,li105,lj105] = netalign_setup(a20,b59,a_b105);
    x105 = netalignbp(S105,w105,0,1,li105,lj105);
    [ma105 mb105 mi105 overlap105 weight105] = mwmround(x105,S105,w105,li105,lj105);
    [ma105,mb105];
    [S106,w106,li106,lj106] = netalign_setup(a27,b70,a_b106);
    x106 = netalignbp(S106,w106,0,1,li106,lj106);
    [ma106 mb106 mi106 overlap106 weight106] = mwmround(x106,S106,w106,li106,lj106);
    [ma106,mb106];
    [S107,w107,li107,lj107] = netalign_setup(a8,b46,a_b107);
    x107 = netalignbp(S107,w107,0,1,li107,lj107);
    [ma107 mb107 mi107 overlap107 weight107] = mwmround(x107,S107,w107,li107,lj107);
    [ma107,mb107];
    [S108,w108,li108,lj108] = netalign_setup(a34,b115,a_b108);
    x108 = netalignbp(S108,w108,0,1,li108,lj108);
    [ma108 mb108 mi108 overlap108 weight108] = mwmround(x108,S108,w108,li108,lj108);
    [ma108,mb108];
    [S109,w109,li109,lj109] = netalign_setup(a90,b117,a_b109);
    x109 = netalignbp(S109,w109,0,1,li109,lj109);
    [ma109 mb109 mi109 overlap109 weight109] = mwmround(x109,S109,w109,li109,lj109);
    [ma109,mb109];
    [S110,w110,li110,lj110] = netalign_setup(a116,b90,a_b110);
    x110 = netalignbp(S110,w110,0,1,li110,lj110);
    [ma110 mb110 mi110 overlap110 weight110] = mwmround(x110,S110,w110,li110,lj110);
    [ma110,mb110];
    [S111,w111,li111,lj111] = netalign_setup(a14,b41,a_b111);
    x111 = netalignbp(S111,w111,0,1,li111,lj111);
    [ma111 mb111 mi111 overlap111 weight111] = mwmround(x111,S111,w111,li111,lj111);
    [ma111,mb111];
    [S112,w112,li112,lj112] = netalign_setup(a60,b80,a_b112);
    x112 = netalignbp(S112,w112,0,1,li112,lj112);
    [ma112 mb112 mi112 overlap112 weight112] = mwmround(x112,S112,w112,li112,lj112);
    [ma112,mb112];
    [S113,w113,li113,lj113] = netalign_setup(a106,b57,a_b113);
    x113 = netalignbp(S113,w113,0,1,li113,lj113);
    [ma113 mb113 mi113 overlap113 weight113] = mwmround(x113,S113,w113,li113,lj113);
    [ma113,mb113];
    [S114,w114,li114,lj114] = netalign_setup(a55,b62,a_b114);
    x114 = netalignbp(S114,w114,0,1,li114,lj114);
    [ma114 mb114 mi114 overlap114 weight114] = mwmround(x114,S114,w114,li114,lj114);
    [ma114,mb114];
    [S115,w115,li115,lj115] = netalign_setup(a115,b110,a_b115);
    x115 = netalignbp(S115,w115,0,1,li115,lj115);
    [ma115 mb115 mi115 overlap115 weight115] = mwmround(x115,S115,w115,li115,lj115);
    [ma115,mb115];
    [S116,w116,li116,lj116] = netalign_setup(a13,b24,a_b116);
    x116 = netalignbp(S116,w116,0,1,li116,lj116);
    [ma116 mb116 mi116 overlap116 weight116] = mwmround(x116,S116,w116,li116,lj116);
    [ma116,mb116];
    [S117,w117,li117,lj117] = netalign_setup(a89,b9,a_b117);
    x117 = netalignbp(S117,w117,0,1,li117,lj117);
    [ma117 mb117 mi117 overlap117 weight117] = mwmround(x117,S117,w117,li117,lj117);
    [ma117,mb117];
    [S118,w118,li118,lj118] = netalign_setup(a97,b79,a_b118);
    x118 = netalignbp(S118,w118,0,1,li118,lj118);
    [ma118 mb118 mi118 overlap118 weight118] = mwmround(x118,S118,w118,li118,lj118);
    [ma118,mb118];
    [S119,w119,li119,lj119] = netalign_setup(a65,b103,a_b119);
    x119 = netalignbp(S119,w119,0,1,li119,lj119);
    [ma119 mb119 mi119 overlap119 weight119] = mwmround(x119,S119,w119,li119,lj119);
    [ma119,mb119];
    [S120,w120,li120,lj120] = netalign_setup(a66,b25,a_b120);
    x120 = netalignbp(S120,w120,0,1,li120,lj120);
    [ma120 mb120 mi120 overlap120 weight120] = mwmround(x120,S120,w120,li120,lj120);
    [ma120,mb120];
    [S121,w121,li121,lj121] = netalign_setup(a15,b107,a_b121);
    x121 = netalignbp(S121,w121,0,1,li121,lj121);
    [ma121 mb121 mi121 overlap121 weight121] = mwmround(x121,S121,w121,li121,lj121);
    [ma121,mb121];
    [S122,w122,li122,lj122] = netalign_setup(a42,b104,a_b122);
    x122 = netalignbp(S122,w122,0,1,li122,lj122);
    [ma122 mb122 mi122 overlap122 weight122] = mwmround(x122,S122,w122,li122,lj122);
    [ma122,mb122];
    [S123,w123,li123,lj123] = netalign_setup(a73,b122,a_b123);
    x123 = netalignbp(S123,w123,0,1,li123,lj123);
    [ma123 mb123 mi123 overlap123 weight123] = mwmround(x123,S123,w123,li123,lj123);
    [ma123,mb123];
    [S124,w124,li124,lj124] = netalign_setup(a56,b48,a_b124);
    x124 = netalignbp(S124,w124,0,1,li124,lj124);
    [ma124 mb124 mi124 overlap124 weight124] = mwmround(x124,S124,w124,li124,lj124);
    [ma124,mb124];
    [S125,w125,li125,lj125] = netalign_setup(a98,b36,a_b125);
    x125 = netalignbp(S125,w125,0,1,li125,lj125);
    [ma125 mb125 mi125 overlap125 weight125] = mwmround(x125,S125,w125,li125,lj125);
    [ma125,mb125];
    [S126,w126,li126,lj126] = netalign_setup(a108,b39,a_b126);
    x126 = netalignbp(S126,w126,0,1,li126,lj126);
    [ma126 mb126 mi126 overlap126 weight126] = mwmround(x126,S126,w126,li126,lj126);
    [ma126,mb126];
    [S127,w127,li127,lj127] = netalign_setup(a47,b23,a_b127);
    x127 = netalignbp(S127,w127,0,1,li127,lj127);
    [ma127 mb127 mi127 overlap127 weight127] = mwmround(x127,S127,w127,li127,lj127);
    [ma127,mb127];
    disp('sizing begins')
    size(a_b1)
    size(a_b2)
    size(a_b3)
    size(a_b4)
    size(a_b5)
    size(a_b6)
    size(a_b7)
    size(a_b8)
    size(a_b9)
    size(a_b10)
    size(a_b11)
    size(a_b12)
    size(a_b13)
    size(a_b14)
    size(a_b15)
    size(a_b16)
    size(a_b17)
    size(a_b18)
    size(a_b19)
    size(a_b20)
    size(a_b21)
    size(a_b22)
    size(a_b23)
    size(a_b24)
    size(a_b25)
    size(a_b26)
    size(a_b27)
    size(a_b28)
    size(a_b29)
    size(a_b30)
    size(a_b31)
    size(a_b32)
    size(a_b33)
    size(a_b34)
    size(a_b35)
    size(a_b36)
    size(a_b37)
    size(a_b38)
    size(a_b39)
    size(a_b40)
    size(a_b41)
    size(a_b42)
    size(a_b43)
    size(a_b44)
    size(a_b45)
    size(a_b46)
    size(a_b47)
    size(a_b48)
    size(a_b49)
    size(a_b50)
    size(a_b51)
    size(a_b52)
    size(a_b53)
    size(a_b54)
    size(a_b55)
    size(a_b56)
    size(a_b57)
    size(a_b58)
    size(a_b59)
    size(a_b60)
    size(a_b61)
    size(a_b62)
    size(a_b63)
    size(a_b64)
    size(a_b65)
    size(a_b66)
    size(a_b67)
    size(a_b68)
    size(a_b69)
    size(a_b70)
    size(a_b71)
    size(a_b72)
    size(a_b73)
    size(a_b74)
    size(a_b75)
    size(a_b76)
    size(a_b77)
    size(a_b78)
    size(a_b79)
    size(a_b80)
    size(a_b81)
    size(a_b82)
    size(a_b83)
    size(a_b84)
    size(a_b85)
    size(a_b86)
    size(a_b87)
    size(a_b88)
    size(a_b89)
    size(a_b90)
    size(a_b91)
    size(a_b92)
    size(a_b93)
    size(a_b94)
    size(a_b95)
    size(a_b96)
    size(a_b97)
    size(a_b98)
    size(a_b99)
    size(a_b100)
    size(a_b101)
    size(a_b102)
    size(a_b103)
    size(a_b104)
    size(a_b105)
    size(a_b106)
    size(a_b107)
    size(a_b108)
    size(a_b109)
    size(a_b110)
    size(a_b111)
    size(a_b112)
    size(a_b113)
    size(a_b114)
    size(a_b115)
    size(a_b116)
    size(a_b117)
    size(a_b118)
    size(a_b119)
    size(a_b120)
    size(a_b121)
    size(a_b122)
    size(a_b123)
    size(a_b124)
    size(a_b125)
    size(a_b126)
    size(a_b127)
    disp('writing begins')
    fp = fopen('node_align1','w');
    for ii = 1:size(ma1,1)
        fprintf(fp,'%d\t%d\n',ma1(ii,1),mb1(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align2','w');
    for ii = 1:size(ma2,1)
        fprintf(fp,'%d\t%d\n',ma2(ii,1),mb2(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align3','w');
    for ii = 1:size(ma3,1)
        fprintf(fp,'%d\t%d\n',ma3(ii,1),mb3(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align4','w');
    for ii = 1:size(ma4,1)
        fprintf(fp,'%d\t%d\n',ma4(ii,1),mb4(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align5','w');
    for ii = 1:size(ma5,1)
        fprintf(fp,'%d\t%d\n',ma5(ii,1),mb5(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align6','w');
    for ii = 1:size(ma6,1)
        fprintf(fp,'%d\t%d\n',ma6(ii,1),mb6(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align7','w');
    for ii = 1:size(ma7,1)
        fprintf(fp,'%d\t%d\n',ma7(ii,1),mb7(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align8','w');
    for ii = 1:size(ma8,1)
        fprintf(fp,'%d\t%d\n',ma8(ii,1),mb8(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align9','w');
    for ii = 1:size(ma9,1)
        fprintf(fp,'%d\t%d\n',ma9(ii,1),mb9(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align10','w');
    for ii = 1:size(ma10,1)
        fprintf(fp,'%d\t%d\n',ma10(ii,1),mb10(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align11','w');
    for ii = 1:size(ma11,1)
        fprintf(fp,'%d\t%d\n',ma11(ii,1),mb11(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align12','w');
    for ii = 1:size(ma12,1)
        fprintf(fp,'%d\t%d\n',ma12(ii,1),mb12(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align13','w');
    for ii = 1:size(ma13,1)
        fprintf(fp,'%d\t%d\n',ma13(ii,1),mb13(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align14','w');
    for ii = 1:size(ma14,1)
        fprintf(fp,'%d\t%d\n',ma14(ii,1),mb14(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align15','w');
    for ii = 1:size(ma15,1)
        fprintf(fp,'%d\t%d\n',ma15(ii,1),mb15(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align16','w');
    for ii = 1:size(ma16,1)
        fprintf(fp,'%d\t%d\n',ma16(ii,1),mb16(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align17','w');
    for ii = 1:size(ma17,1)
        fprintf(fp,'%d\t%d\n',ma17(ii,1),mb17(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align18','w');
    for ii = 1:size(ma18,1)
        fprintf(fp,'%d\t%d\n',ma18(ii,1),mb18(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align19','w');
    for ii = 1:size(ma19,1)
        fprintf(fp,'%d\t%d\n',ma19(ii,1),mb19(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align20','w');
    for ii = 1:size(ma20,1)
        fprintf(fp,'%d\t%d\n',ma20(ii,1),mb20(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align21','w');
    for ii = 1:size(ma21,1)
        fprintf(fp,'%d\t%d\n',ma21(ii,1),mb21(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align22','w');
    for ii = 1:size(ma22,1)
        fprintf(fp,'%d\t%d\n',ma22(ii,1),mb22(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align23','w');
    for ii = 1:size(ma23,1)
        fprintf(fp,'%d\t%d\n',ma23(ii,1),mb23(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align24','w');
    for ii = 1:size(ma24,1)
        fprintf(fp,'%d\t%d\n',ma24(ii,1),mb24(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align25','w');
    for ii = 1:size(ma25,1)
        fprintf(fp,'%d\t%d\n',ma25(ii,1),mb25(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align26','w');
    for ii = 1:size(ma26,1)
        fprintf(fp,'%d\t%d\n',ma26(ii,1),mb26(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align27','w');
    for ii = 1:size(ma27,1)
        fprintf(fp,'%d\t%d\n',ma27(ii,1),mb27(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align28','w');
    for ii = 1:size(ma28,1)
        fprintf(fp,'%d\t%d\n',ma28(ii,1),mb28(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align29','w');
    for ii = 1:size(ma29,1)
        fprintf(fp,'%d\t%d\n',ma29(ii,1),mb29(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align30','w');
    for ii = 1:size(ma30,1)
        fprintf(fp,'%d\t%d\n',ma30(ii,1),mb30(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align31','w');
    for ii = 1:size(ma31,1)
        fprintf(fp,'%d\t%d\n',ma31(ii,1),mb31(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align32','w');
    for ii = 1:size(ma32,1)
        fprintf(fp,'%d\t%d\n',ma32(ii,1),mb32(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align33','w');
    for ii = 1:size(ma33,1)
        fprintf(fp,'%d\t%d\n',ma33(ii,1),mb33(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align34','w');
    for ii = 1:size(ma34,1)
        fprintf(fp,'%d\t%d\n',ma34(ii,1),mb34(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align35','w');
    for ii = 1:size(ma35,1)
        fprintf(fp,'%d\t%d\n',ma35(ii,1),mb35(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align36','w');
    for ii = 1:size(ma36,1)
        fprintf(fp,'%d\t%d\n',ma36(ii,1),mb36(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align37','w');
    for ii = 1:size(ma37,1)
        fprintf(fp,'%d\t%d\n',ma37(ii,1),mb37(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align38','w');
    for ii = 1:size(ma38,1)
        fprintf(fp,'%d\t%d\n',ma38(ii,1),mb38(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align39','w');
    for ii = 1:size(ma39,1)
        fprintf(fp,'%d\t%d\n',ma39(ii,1),mb39(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align40','w');
    for ii = 1:size(ma40,1)
        fprintf(fp,'%d\t%d\n',ma40(ii,1),mb40(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align41','w');
    for ii = 1:size(ma41,1)
        fprintf(fp,'%d\t%d\n',ma41(ii,1),mb41(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align42','w');
    for ii = 1:size(ma42,1)
        fprintf(fp,'%d\t%d\n',ma42(ii,1),mb42(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align43','w');
    for ii = 1:size(ma43,1)
        fprintf(fp,'%d\t%d\n',ma43(ii,1),mb43(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align44','w');
    for ii = 1:size(ma44,1)
        fprintf(fp,'%d\t%d\n',ma44(ii,1),mb44(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align45','w');
    for ii = 1:size(ma45,1)
        fprintf(fp,'%d\t%d\n',ma45(ii,1),mb45(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align46','w');
    for ii = 1:size(ma46,1)
        fprintf(fp,'%d\t%d\n',ma46(ii,1),mb46(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align47','w');
    for ii = 1:size(ma47,1)
        fprintf(fp,'%d\t%d\n',ma47(ii,1),mb47(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align48','w');
    for ii = 1:size(ma48,1)
        fprintf(fp,'%d\t%d\n',ma48(ii,1),mb48(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align49','w');
    for ii = 1:size(ma49,1)
        fprintf(fp,'%d\t%d\n',ma49(ii,1),mb49(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align50','w');
    for ii = 1:size(ma50,1)
        fprintf(fp,'%d\t%d\n',ma50(ii,1),mb50(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align51','w');
    for ii = 1:size(ma51,1)
        fprintf(fp,'%d\t%d\n',ma51(ii,1),mb51(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align52','w');
    for ii = 1:size(ma52,1)
        fprintf(fp,'%d\t%d\n',ma52(ii,1),mb52(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align53','w');
    for ii = 1:size(ma53,1)
        fprintf(fp,'%d\t%d\n',ma53(ii,1),mb53(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align54','w');
    for ii = 1:size(ma54,1)
        fprintf(fp,'%d\t%d\n',ma54(ii,1),mb54(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align55','w');
    for ii = 1:size(ma55,1)
        fprintf(fp,'%d\t%d\n',ma55(ii,1),mb55(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align56','w');
    for ii = 1:size(ma56,1)
        fprintf(fp,'%d\t%d\n',ma56(ii,1),mb56(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align57','w');
    for ii = 1:size(ma57,1)
        fprintf(fp,'%d\t%d\n',ma57(ii,1),mb57(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align58','w');
    for ii = 1:size(ma58,1)
        fprintf(fp,'%d\t%d\n',ma58(ii,1),mb58(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align59','w');
    for ii = 1:size(ma59,1)
        fprintf(fp,'%d\t%d\n',ma59(ii,1),mb59(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align60','w');
    for ii = 1:size(ma60,1)
        fprintf(fp,'%d\t%d\n',ma60(ii,1),mb60(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align61','w');
    for ii = 1:size(ma61,1)
        fprintf(fp,'%d\t%d\n',ma61(ii,1),mb61(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align62','w');
    for ii = 1:size(ma62,1)
        fprintf(fp,'%d\t%d\n',ma62(ii,1),mb62(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align63','w');
    for ii = 1:size(ma63,1)
        fprintf(fp,'%d\t%d\n',ma63(ii,1),mb63(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align64','w');
    for ii = 1:size(ma64,1)
        fprintf(fp,'%d\t%d\n',ma64(ii,1),mb64(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align65','w');
    for ii = 1:size(ma65,1)
        fprintf(fp,'%d\t%d\n',ma65(ii,1),mb65(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align66','w');
    for ii = 1:size(ma66,1)
        fprintf(fp,'%d\t%d\n',ma66(ii,1),mb66(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align67','w');
    for ii = 1:size(ma67,1)
        fprintf(fp,'%d\t%d\n',ma67(ii,1),mb67(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align68','w');
    for ii = 1:size(ma68,1)
        fprintf(fp,'%d\t%d\n',ma68(ii,1),mb68(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align69','w');
    for ii = 1:size(ma69,1)
        fprintf(fp,'%d\t%d\n',ma69(ii,1),mb69(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align70','w');
    for ii = 1:size(ma70,1)
        fprintf(fp,'%d\t%d\n',ma70(ii,1),mb70(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align71','w');
    for ii = 1:size(ma71,1)
        fprintf(fp,'%d\t%d\n',ma71(ii,1),mb71(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align72','w');
    for ii = 1:size(ma72,1)
        fprintf(fp,'%d\t%d\n',ma72(ii,1),mb72(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align73','w');
    for ii = 1:size(ma73,1)
        fprintf(fp,'%d\t%d\n',ma73(ii,1),mb73(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align74','w');
    for ii = 1:size(ma74,1)
        fprintf(fp,'%d\t%d\n',ma74(ii,1),mb74(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align75','w');
    for ii = 1:size(ma75,1)
        fprintf(fp,'%d\t%d\n',ma75(ii,1),mb75(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align76','w');
    for ii = 1:size(ma76,1)
        fprintf(fp,'%d\t%d\n',ma76(ii,1),mb76(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align77','w');
    for ii = 1:size(ma77,1)
        fprintf(fp,'%d\t%d\n',ma77(ii,1),mb77(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align78','w');
    for ii = 1:size(ma78,1)
        fprintf(fp,'%d\t%d\n',ma78(ii,1),mb78(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align79','w');
    for ii = 1:size(ma79,1)
        fprintf(fp,'%d\t%d\n',ma79(ii,1),mb79(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align80','w');
    for ii = 1:size(ma80,1)
        fprintf(fp,'%d\t%d\n',ma80(ii,1),mb80(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align81','w');
    for ii = 1:size(ma81,1)
        fprintf(fp,'%d\t%d\n',ma81(ii,1),mb81(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align82','w');
    for ii = 1:size(ma82,1)
        fprintf(fp,'%d\t%d\n',ma82(ii,1),mb82(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align83','w');
    for ii = 1:size(ma83,1)
        fprintf(fp,'%d\t%d\n',ma83(ii,1),mb83(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align84','w');
    for ii = 1:size(ma84,1)
        fprintf(fp,'%d\t%d\n',ma84(ii,1),mb84(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align85','w');
    for ii = 1:size(ma85,1)
        fprintf(fp,'%d\t%d\n',ma85(ii,1),mb85(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align86','w');
    for ii = 1:size(ma86,1)
        fprintf(fp,'%d\t%d\n',ma86(ii,1),mb86(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align87','w');
    for ii = 1:size(ma87,1)
        fprintf(fp,'%d\t%d\n',ma87(ii,1),mb87(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align88','w');
    for ii = 1:size(ma88,1)
        fprintf(fp,'%d\t%d\n',ma88(ii,1),mb88(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align89','w');
    for ii = 1:size(ma89,1)
        fprintf(fp,'%d\t%d\n',ma89(ii,1),mb89(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align90','w');
    for ii = 1:size(ma90,1)
        fprintf(fp,'%d\t%d\n',ma90(ii,1),mb90(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align91','w');
    for ii = 1:size(ma91,1)
        fprintf(fp,'%d\t%d\n',ma91(ii,1),mb91(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align92','w');
    for ii = 1:size(ma92,1)
        fprintf(fp,'%d\t%d\n',ma92(ii,1),mb92(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align93','w');
    for ii = 1:size(ma93,1)
        fprintf(fp,'%d\t%d\n',ma93(ii,1),mb93(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align94','w');
    for ii = 1:size(ma94,1)
        fprintf(fp,'%d\t%d\n',ma94(ii,1),mb94(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align95','w');
    for ii = 1:size(ma95,1)
        fprintf(fp,'%d\t%d\n',ma95(ii,1),mb95(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align96','w');
    for ii = 1:size(ma96,1)
        fprintf(fp,'%d\t%d\n',ma96(ii,1),mb96(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align97','w');
    for ii = 1:size(ma97,1)
        fprintf(fp,'%d\t%d\n',ma97(ii,1),mb97(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align98','w');
    for ii = 1:size(ma98,1)
        fprintf(fp,'%d\t%d\n',ma98(ii,1),mb98(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align99','w');
    for ii = 1:size(ma99,1)
        fprintf(fp,'%d\t%d\n',ma99(ii,1),mb99(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align100','w');
    for ii = 1:size(ma100,1)
        fprintf(fp,'%d\t%d\n',ma100(ii,1),mb100(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align101','w');
    for ii = 1:size(ma101,1)
        fprintf(fp,'%d\t%d\n',ma101(ii,1),mb101(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align102','w');
    for ii = 1:size(ma102,1)
        fprintf(fp,'%d\t%d\n',ma102(ii,1),mb102(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align103','w');
    for ii = 1:size(ma103,1)
        fprintf(fp,'%d\t%d\n',ma103(ii,1),mb103(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align104','w');
    for ii = 1:size(ma104,1)
        fprintf(fp,'%d\t%d\n',ma104(ii,1),mb104(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align105','w');
    for ii = 1:size(ma105,1)
        fprintf(fp,'%d\t%d\n',ma105(ii,1),mb105(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align106','w');
    for ii = 1:size(ma106,1)
        fprintf(fp,'%d\t%d\n',ma106(ii,1),mb106(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align107','w');
    for ii = 1:size(ma107,1)
        fprintf(fp,'%d\t%d\n',ma107(ii,1),mb107(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align108','w');
    for ii = 1:size(ma108,1)
        fprintf(fp,'%d\t%d\n',ma108(ii,1),mb108(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align109','w');
    for ii = 1:size(ma109,1)
        fprintf(fp,'%d\t%d\n',ma109(ii,1),mb109(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align110','w');
    for ii = 1:size(ma110,1)
        fprintf(fp,'%d\t%d\n',ma110(ii,1),mb110(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align111','w');
    for ii = 1:size(ma111,1)
        fprintf(fp,'%d\t%d\n',ma111(ii,1),mb111(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align112','w');
    for ii = 1:size(ma112,1)
        fprintf(fp,'%d\t%d\n',ma112(ii,1),mb112(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align113','w');
    for ii = 1:size(ma113,1)
        fprintf(fp,'%d\t%d\n',ma113(ii,1),mb113(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align114','w');
    for ii = 1:size(ma114,1)
        fprintf(fp,'%d\t%d\n',ma114(ii,1),mb114(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align115','w');
    for ii = 1:size(ma115,1)
        fprintf(fp,'%d\t%d\n',ma115(ii,1),mb115(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align116','w');
    for ii = 1:size(ma116,1)
        fprintf(fp,'%d\t%d\n',ma116(ii,1),mb116(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align117','w');
    for ii = 1:size(ma117,1)
        fprintf(fp,'%d\t%d\n',ma117(ii,1),mb117(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align118','w');
    for ii = 1:size(ma118,1)
        fprintf(fp,'%d\t%d\n',ma118(ii,1),mb118(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align119','w');
    for ii = 1:size(ma119,1)
        fprintf(fp,'%d\t%d\n',ma119(ii,1),mb119(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align120','w');
    for ii = 1:size(ma120,1)
        fprintf(fp,'%d\t%d\n',ma120(ii,1),mb120(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align121','w');
    for ii = 1:size(ma121,1)
        fprintf(fp,'%d\t%d\n',ma121(ii,1),mb121(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align122','w');
    for ii = 1:size(ma122,1)
        fprintf(fp,'%d\t%d\n',ma122(ii,1),mb122(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align123','w');
    for ii = 1:size(ma123,1)
        fprintf(fp,'%d\t%d\n',ma123(ii,1),mb123(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align124','w');
    for ii = 1:size(ma124,1)
        fprintf(fp,'%d\t%d\n',ma124(ii,1),mb124(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align125','w');
    for ii = 1:size(ma125,1)
        fprintf(fp,'%d\t%d\n',ma125(ii,1),mb125(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align126','w');
    for ii = 1:size(ma126,1)
        fprintf(fp,'%d\t%d\n',ma126(ii,1),mb126(ii,1));
    end
    fclose(fp);
    fp = fopen('node_align127','w');
    for ii = 1:size(ma127,1)
        fprintf(fp,'%d\t%d\n',ma127(ii,1),mb127(ii,1));
    end
    fclose(fp);
end

