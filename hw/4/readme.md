Question 1A:  
function Convert=ConvertTempFor(Invec,item)   
Convert=length(Invec);     
    if(strcmp(item,'C2F')==1)  
        for i=1:length(Invec)  
        Convert (i)=(i-32)*(5/9);  
        end  
        elseif(strcmp(item,'F2C')==1)  
            for i=1:length(Invec)  
            Convert(i)=(i*(9/5))+32;  
            end  
            else  
                disp('Error');  
            end  
    end   
        
Question 1B:    
function Convert = ConvertTempWhile(Invec,item)  
Convert=length(Invec);     
    if(strcmp(item,'C2F')==1)  
        i=1;  
        while i~=length(Invec)+1  
        Convert (i)=(i-32)*(5/9);  
        i=i+1;  
        end  
        elseif(strcmp(item,'F2C')==1)  
            i=1;  
           while i~=length(Invec)+1  
            Convert(i)=(i*(9/5))+32;  
            i=i+1;  
            end  
            else  
                disp('Error');  
            end  
    end   
    
    Question 1C:
    function Convert= convertTempVec(Invec,item)
    Convert=length(Invec);  
        if(strcmp(item,'C2F')==1)
            i=1:length(Invec);  
            Convert(i)=(i-32)*(5/9);
        elseif (strcmp(item,'F2C')==1)  
            i=1:length(Invec);
            Convert(i)=(i*(9/5))+32;
    else 
        disp('error')
            end
    end
    
    Question 2:
        






Question 3:
function extractLetter()  
List= {{'M','A','T','L','A','B'}, {' '}, {'i','s'}, {' '}, {'a'}, {' '}, {'s','t','r','a','n','g','e'}, {', '}, {'b','u','t',' '}, {'p','o','p','u','l','a','r'}, {' '}, {'p','r','o','g','r','a','m','m','i','n','g',' ','l','a','n','g','u','a','g','e'} };  
lengthlist=length(List);    
    for i=1:lengthlist  
    x=length(List{i});  
    for z=1:x  
        fprintf(List{i}{z})  
    end   
    end  
    
Question 4:  
This code takes every number from 1 to 60, and then squares that number which it returns. Then it does this again, taking the square root of 2 twice and then square it twice, then output it. The code does this similar process of taking 2 and square rooting it an n number of times before square rooting it an n number of times. After we run the code, we see this behavior because of square root of 2 not being a perfect square root, thus causing a rounding to occur to the 16th decimal place.This prevents us from getting a perfect value of 2.  

Question 5:  
The code is taking an value of eps=1 and then adding that to 1. If 1+eps doesn't equal 1, it divides eps by 2, and add runs the entire thing again. This eventually reaches a value so small, that when added to 1, it equals the value of 1, thus ending the loop.  

Question 6:  
function LargestPrime=getLargestPrime(n)  
    for i=n:-1:1  
        if(isprime(i))  
            LargestPrime=i;  
            break;  
        end   
     end   
end  

Question 7A:    
function fib()  
     n = input('Please enter a non-negative integer or type stop: ','s');  
    if strcmp(n,'stop')  
        return  
    else  
        n = str2double(n);  
        if isreal(n)  
            if n>=0 && round(n)==n  
                 disp(['time(getfib(',num2str(n),') = ',num2str(timeit(@()getFib(n)))]);  
                fib()  
                return  
            end  
        end  
        disp('The input argument is not a non-negative integer!');  
        fib()  
    end  
    function fib = getFib(n_int)  
        if n_int == 0  
            fib = 0;  
        elseif n_int == 1  
             fib = 1;  
        else  
            fib = getFib(n_int-1) + getFib(n_int-2);  
        end  
    end  
end  

Question 7b:  
function fibLoop()    
    n = input('Please enter a non-negative integer or type stop: ','s');  
    if strcmp(n,'stop')  
        return  
    else  
        n = str2double(n);  
        if isreal(n)  
            if n>=0 && round(n)==n  
                disp(['fib(',num2str(n),') = ',num2str(getFib(n))]);  
                fib()  
                return  
            end  
        end  
        disp('The input argument is not a non-negative integer!');  
        fib()  
    end  
end  
function fib = getFib(n_int)  
        if n_int == 0  
            fib = 0;  
        elseif n_int==1  
            fib=0;  
        else   
            fibOld1=0;  
            fibOld2=1;  
            for i=1:n_int-1  
               fib=fibOld1+fibOld2;  
               fibOld1=fibOld2;   
               fibOld2=fib;  
            end  
        end  
end  

Question 7c:  
The fibloop() function has a faster run time and is more efficient when compared to the fib() function. The huge difference in performance is caused by the fact that for loops have to do less work while recursive functions have to do multiple things to get the final answer.  

Question 8
 
