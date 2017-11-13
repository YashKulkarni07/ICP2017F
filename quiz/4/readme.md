Question 1a:   
function getFacWhile(n)  
    NewN = n;  
    fac = n;  
    while n > 1  
        n = n-1;  
        fac = fac*n;  
    end  
    disp([num2str(NewN),'! = ' num2str(fac)])  
end  

Question 1b:    
function getFacFor(n)  
NewN=n;  
fac=n;   
for i=n:-1:1    
fac=fac*i;    
end    
 disp([num2str(NewN),'! = ' num2str(fac)])  
end  

Question 1c:  
function Fac=getFacVec(n)
x=1:n
prod(n);
end

Question 2:  
getFac(4)
average runtime for getFac(4): 0.000797 seconds.
getFacFor(4)
average runtime for getFacFor(4): 0.000085 seconds.
getFacVec(4)
average runtime for getFacVec(4): .003441 seconds
