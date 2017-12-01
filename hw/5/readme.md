Question 1:

rng(131313);  
nstudents=99;  
StudentData=readtable('students.csv');  
Triple=randperm(nstudents);  
StudentsTriple=cell(3,nstudents/3);  
for i=1:nstudetns/3  
    studentTriple(:,i)=[StudentData.Student(Triple(i))...  
        ,StudentData.Student(Triple(nstudents/3+i))...  
        ,StudentData.Student(Triple(2*nstudents/3+i))...  
        ];  
end  
xlswrite('nameTriples.xlsx',StudentTriple');  

Question 2:    
triggerListURL='http://www.shahmoradi.org/ICP2017F/homework/5-problems/triggers.txt';  
TriggerList=webread(triggerListURL);  
TriggerList=strsplit(TriggerList,'\n');  
dataDir='.swift/';  
mkdir(dataDir);  

missingFileCounter=0;  
for i=1:length(TriggerList)  
try   
    dataRepos='http://www.shahmoradi.org/ICP2017F/homework/5-problems/swift/';  
filename=['FRB', TriggerList{i}, '_ep_flu.txt'];  
dataURL=[dataRepos,filename];  
   data=webread(dataURL);  
fid=fopen(filename,'w');  
    fprintf(fid,'%s',data);  
fclose(fid);  
catch   
    missingFileCounter=missingFileCounter+1;  
    disp('The requested file doesn not exist on the web! skip');  
end  
disp('This files do not exist:',num2str(missingFileCounter));  
end  

function plotDataFromFile()  
figure (); hold on; box on;  
eventCounter=0;  
for i=1:length(triggerList)  
    disp(['plotting data from file number' num2str(i)]);  
    if ~isempty(MyDataCell{i}) && all(MyDataCell{i}(:,2)<0)  
        eventCounter=eventCounter+1;  
        scatter(exp(MyDataCell{i}(:,2)) ...  
        , MyDataCell{i}(:,1)...  
        ,1 ...  
        ,'MarkerFaceColor','red'...  
        ,'MarkerEdgeColor','red'...  
        ,'MarkerFaceAlpha',.01...  
        ,'MarkerEdgeAlpha',.01 ...  
        );  
    end  
end  
set( gca ...  
    , 'xsocale','log'...  
    , 'yscale','log'...  
    ,'xlim',[1e-8 1e-1]...  
    );  
xlabel('Fluence[erg/cm^2]' ...  
    ,'interpreter','tex'...  
    ,'frontsize',12 ...  
    );  
ylabel('E_{peak}'...  
     ,interpreter','tex'...  
     ,'fontsize',12...  
      );  
 title(['Plot of E_{peak} vs Fluence for ', num2str(eventCounter),  
     'Swift GRB event']...  
     ,'interpreter','tex'...  
     ,'fontsize',12...  
      );  
saveas( gcf ...  
       ,'SwiftDataPlot.png' ...  
       );  
   
Question 3:    
rng('shuffle');  
nSample = 1000;  
winCounter= 0;  
oddsOfWin = zeros(nSample,1);  
doors = [1,2,3];  
for iSample = 2:nSample+1  
doorWithCar = randi(3);  
myChoice = randi(3);  
HostChoice = doors(doors ~= doorWithCar);  
HostChoice = HostChoice(HostChoice ~= myChoice);  
HostChoice = HostChoice(randi(length(HostChoice)));  
if myChoice==doorWithCar  
    winCounter = winCounter+1;  
    oddsOfWin(iSample)= winCounter/iSample;  
else  
    oddsOfWin(iSample)=oddsOfWin(iSample-1);  
end  
disp(['odds wins by NOT switching:',num2str(oddsOfWin(iSample))]);   
end  
plot(oddsOfWin); 

Question 4:  
function approximation()    
prompt='How many n terms?';  
n=input(prompt);  
a=rand(n,2);  
circle=zeros(n,2);  
m=1;  
for i=1:n  
    d=sqrt(a(i,1)^2+a(i,2)^2);  
  if(d<=1)  
        circle(m,1)=a(i,1);  
        circle(m,2)=a(i,2);  
        m=m+1;  
  end  
end  


circle=circle(1:m,1:2);  
disp(['pi is:', num2str(4*length(circle)/(n))]);  
scatter(circle(:,1),circle(:,2),3);  
hold on  
xlabel('number of points');  
ylabel('estimate of pi');  
hold off    
end  
    
