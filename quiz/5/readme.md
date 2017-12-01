Question 1:    
GrowthRate=importdata('chain.txt');  
Table=GrowthRate(:,4); 
plot ( 'Table','color','red');  
xlabel('Sample Number' ...   
    ,'interpreter','tex'...  
    ,'frontsize',12 ...  
    );  
ylabel('Growth Rate'...  
     ,'interpreter','tex'...  
     ,'fontsize',12...    
      );  

Question 2:    
input='Give me a website';  
x=prompt(input); 
try  
    webcontent=webread(x);  
catch  
    disp('The requested web address does not exist! Gracefully existing...');  

Question 3:  
gca:  gca refers to the current active plot in the correct active figure.    
gcf: gcf refers to the current active figure handle.  


