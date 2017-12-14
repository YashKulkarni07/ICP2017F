%data setup
global logNumCellInit Time logNumCell ndata
load('Cells.mat')
numCellInit = 100000;
logNumCellInit = log(numCellInit);
Time = [0,10,12,14,16,18,20,22];
ndata = length(Time);
NumCell = zeros(ndata,1);
logNumCell = NumCell;
for itime=2:ndata
    NumCell(itime) = sum( sum( sum(cells(:,:,:,itime -1))));
    logNumCell(itime) = log(NumCell(itime));
    
end

%data fitting
%param order (lambda, c, sigma)
ParamInit = [10,0.1,1];
ParamOptimal = fminsearch(@getLogLike, ParamInit);
ParamOptimal
figure()
plot(1:1:25,exp(getLogNumCell(1:1:25,logNumCellInit,8.0729,.1101)),'color','red','linewidth',3)
hold on
plot(Time,NumCell,'color','blue','linewidth',3)
title('Gompertzian Fit to Rats Brain Tumor Growth','fontsize',12)
xlabel('Time[days]','fontsize', 14)
ylabel('Tumor Cell Count', 'fontsize',14)
legend({'Gompertzian fit','Experimental Data'}, 'fontsize',13,'location','northwest')
saveas(gcf,'comparedata.png');