%Example file inside folder 20 provided as link in the README file of this repository 
 clear all
 Label_Dev_1=[      0    0     0     0     0     1     0.2       0       0.2         0        0        -0.7       0     -0.5        0         0            -1]
 Assign_label= { 'S_1' 'S_2' 'S_3' 'S_4' 'S_5' 'S_6' 'S_{15}' 'S_{16}' 'S_{17}'  'S_{18}'    'G_1'    'G_2'  'G_3'    'G_4'     'G_5'   'G_6'     'C_{18}' };
 Assign= [         1    2      3     4     5     6     15        16       17        18        -1      -2      -3      -4        -5      -6         118 ];
 slice_ppm=[    69.5 53.67 71.62  130.3 133.6  33.42  30.62    32.88       23.07    13.8     103.5  71.24   73.15   69.01     75.34   61.31    13.8];
 minlim=10*[    20      20    73    73    73   73     73       73         20         20       10      10      10      10        10        10              20];
 maxlim=200*[   10      10    10    10    10   10     10       10         10        10       10          10     10      10      10       10            10];
 
 Sign=maxlim*0-1;

 
            ppmll=   flip([ 12   18  48  68  102 119 128]);%  44 ]);
            ppmul=   flip([ 15   43  62  76  106 122 136]);%  46]);
            cImaxvec0=flip([.4   .3 .15  .1  .15  .15  .15]*1.5);
            clines0=flip([   5  5 5  5  5  5    5]);%  30]) ;
            cscalev=flip([  30  30 30 30 30  30   30]);%  120]);
            cmaxv=flip([  .5    .5 .5 .5 .5  .5   .5]);%  .05]);
            ticklength1=[0.05 0.05 .05 .05 .05 .05  .05];

            
            
save ppmlim
