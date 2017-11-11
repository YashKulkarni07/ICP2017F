


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

