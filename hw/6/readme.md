Question 1:  
Slice=data(:,:,sliceNumber);  
        imagesc(Slice);  
       hold on  
        if(sliceNumber==13)  
            set(gca,'XTick',[20 40 60],'YTick',[10 20 30 40]);  
        elseif(sliceNumber==14||sliceNumber==15||sliceNumber==16)  
            set(gca,'XTick',[20 40 60],'YTick',[]);  
        elseif(sliceNumber==1||sliceNumber==5||sliceNumber==9)  
            set(gca,'XTick',[],'YTick',[10 20 30 40]);  
        else  
            set(gca,'XTick',[],'YTick',[]);  
        end  
        title(['z=' num2str(sliceNumber)]);  
        caxis([0 3.5*10^4]);  
        hold off  

Question 2:  
%Use in relation to the script provided in 1
load('cells.mat');  
BinaryData=cells;  
BinaryData(BinaryData~=0)=1;  
imagesc(BinaryData(:,:Slice));  
BCell=bwboundaries(BinaryData(:,:,Slice));  
hold on  
error=0;  
for iobject=1:length(BCell)  
    plot(BCell{iobject}(:,2),BCell{iobject}(:,1)...  
        ,'linewidth',7 ...  
        ,'color', 'red' ...  
        );  
end  
    error=error+sum(cells(BCell{iobject}(:,2), cells(BCell{iobject}(:,1))));  
    data(BCell{1}(1,2),BCell{1}(40,1),Slice);        

Question 3:  
function totalLogProb=getTotalLogProb(Param)  
global data nsample  
logProb=zeros(nsample,1);  
for isample=1:nsample  
    logProb(isample)=log(normpdf(data(isample),Param(1),Param(2)));  
end    
totalLogProb=-sum(logProb);    
end     
load('Drand.mat')  
global data nsample  
data=Drand;  
mu=0;  
sigma=1;  
Param=[mu,sigma];  
nsample=length(data);  
getTotalLogProb(Param)  
minsearch(@getTotalLogProb,Param)  
logProb=zeros(nsample,1);  
for isample=1:nsample  
    logProb(isample)=log(normpdf(data(isample),mu,sigma));  
end  
totalLogProb=-sum(logProb);  

