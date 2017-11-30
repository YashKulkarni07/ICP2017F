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
