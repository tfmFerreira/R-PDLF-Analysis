clear all
figure(2), clf
si2=1024;
lb2=0;
fontsize=14;
fs=fontsize;
fs2=fs;
MASrate=5000;
ppmtick=2;
RPDLFtick=.5;
symbol={'o' 's'};
SplittingRange=2000;
slice_range=SplittingRange/1000;
textpos=[1.1 1.3 1.4];
yrange=1.5;
yrangespec=1;

exppath='/Users/tiagoferreira/Dropbox/GalCer/GalCer-18-0-Chol-50-50/20/'; cores={'k' 'g'}; %%T=50C, 18:0, 50% cholesterol, 40 wt% water

%check 13C spectrum
%plot(ppm,Stemp0(:,1)/max(Stemp0(:,1)),'linewidth',1,'color',cores{2}), hold on, return

eval(['load ' exppath '/ppmlim' ]);
eval(['load ' exppath '/RPDLF_data' ]);
figure(3), clf  

dipolar_slices

OP=Sign.*OP;
             
eval(['load ' exppath '/RPDLF_data' ]);

figure(10), clf  
scale=0.6;

single_contour 
            
eval(['save ' exppath '/OPdata Assign OP temperature' ]);
            
            
           
    
