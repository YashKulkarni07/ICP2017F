load('cells.mat');
ntime=8;
Time=[0,10,12,14,16,18,20,22];
ndata=length(Time);
NumCell =zeros(ntime,1);
NumCellErr=zeros(ntime,1);
NumCell(1)=100000;
NumCellErr(1)=10000;

for itime=2:ndata
    NumCell(itime)=sum(sum(sum(cells(:,:,:,itime-1))));  
end 

BinaryCells=cells;
BinaryCells(BinaryCells~=0)=1;
for itime=2:ndata
    for izslice=1:length(cells(1,1,:,itime-1))
        BCell=bwboundaries(BinaryCells(:,:,izslice,itime-1));
        for iobject=1:length(BCell)
            for irow=1:length(BCell{iobject}(:,1))
   NumCellErr(itime)= NumCellErr(itime)...
       + cells(BCell{iobject}(irow,1 ... 
       ) , BCell{iobject}(irow,2 ... 
       ) , izslice , itime-1);
            end
        end
    end
end

NumCellErr = 0.5*NumCellErr;
errorbar(Time,NumCell,NumCellErr,'.-' ...
 ,'MarkerSize',30 ...
 ,'MarkerEdgeColor','blue' ...
 ,'MarkerFaceColor','blue' ...
 ,'linewidth',3 ...
 );
xlim([min(Time) max(Time)+2]);
legend({'Experimental Data'},'location','northwest');
title('Gompertzian Fit to Rat''s Brain Tumor Growth');
xlabel('Time[days]');
ylabel('Tumor Cell Count');
saveas(gcf,'ObtainingtheErrorinTumorCells.png');
     
     

 