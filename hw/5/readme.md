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

