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


%FLUID REGIME

%SM
%exppath='/Users/tiagoferreira/Dropbox/Myelin_Project/SM_validation/SM_brain/20'; cores={'k' 'k'}; %T=38C, SM brain extract, no cholesterol, 40 wt% water 

%n-GalCer 24:1 / cholesterol
%exppath='/Users/tiagoferreira/Dropbox/GalCer/GalCer-24-1--Chol-50-50/27'; cores={'k' 'b'}; %T=44C?, 24:1, 50% cholesterol, 40 wt% water, must fix temperature, JASTEC 
%%exppath='/Users/tiagoferreira/Dropbox/GalCer/GalCer-24-1--Chol-50-50/200'; cores={'k' 'b'}; %T=44C?, 24:1, 50% cholesterol, 40 wt% water,
%exppath='/Users/tiagoferreira/Dropbox/GalCer/GalCer-24-1--Chol-50-50/2009'; cores={'k' 'b'}; %T=36C, 24:1, 50% cholesterol, 40 wt% water
%exppath='/Users/tiagoferreira/Dropbox/GalCer/GalCer-24-1--Chol-50-50/2010'; cores={'k' 'b'}; %T=56C, 24:1, 50% cholesterol, 40 wt% water

%OH-GalCer 18:0 / cholesterol
%exppath='/Users/tiagoferreira/Dropbox/GalCer/GalCer-18-0-OH-Chol-50-50/NMR_Anika/GalCer_hydroxy/hydroxyGalCer_Chol_8.5.23/38'; cores={'k' 'r'}; %%T=58C, 18:0, 2-hydroxylated, 50% cholesterol, 40 wt% water

%n-GalCer 18:0 / cholesterol
%exppath='/Users/tiagoferreira/Dropbox/GalCer/GalCer-18-0-Chol-50-50/13/'; cores={'k' 'g'}; %%T=58C, 18:0, 50% cholesterol, 40 wt% water
exppath='/Users/tiagoferreira/Dropbox/GalCer/GalCer-18-0-Chol-50-50/20/'; cores={'k' 'g'}; %%T=50C, 18:0, 50% cholesterol, 40 wt% water

%SOLID REGIME
%exppath='/Users/tiagoferreira/Dropbox/GalCer/GalCer-18-0-Chol-50-50/314/';%T=40C?, 18:0, 2-hydroxylated, 50% cholesterol, 40 wt% water, MAS 8kHz,CP with contacttime 50 us 
%exppath='/Users/tiagoferreira/Dropbox/GalCer/GalCer-18-0-Chol-50-50/311/'; %%T=40C?, 18:0, 2-hydroxylated, 50% cholesterol, 40 wt% water, MAS 8kHz,CP with contacttime 200 us 


%check 13C spectrum
%plot(ppm,Stemp0(:,1)/max(Stemp0(:,1)),'linewidth',1,'color',cores{2}), hold on, return

eval(['load ' exppath '/ppmlim' ]);
eval(['load ' exppath '/RPDLF_data' ]);
figure(3), clf  
dipolar_slices

OP=Sign.*OP;

% figure(21), clf 
%  plot(Assign,-OP,symbol{mm},'linewidth',1,'color',cores{mm},'MarkerFaceColor',cores{mm},'MarkerSize',8), hold on
%  for en=1:length(Assign)
%  plot([Assign(en)-.2 Assign(en)+0.2],-[OP(en)-0.01 OP(en)-0.01],'-','color',cores{mm})
%  plot([Assign(en)-.2 Assign(en)+0.2],-[OP(en)+0.01 OP(en)+0.01],'-','color',cores{mm})
%    plot([Assign(en) Assign(en)],-[OP(en)-0.01 OP(en)+0.01],'-','color',cores{mm})
%  end
%  xlim([0 19])
%  ylim([0 0.5])
             
eval(['load ' exppath '/RPDLF_data' ]);

figure(10), clf  
scale=0.6;
single_contour 
            
eval(['save ' exppath '/OPdata Assign OP temperature' ]);
            
            
           
    