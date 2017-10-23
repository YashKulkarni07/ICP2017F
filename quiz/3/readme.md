1. The dot makes it a element-wise multiplication rather than normal multiplication.

2. a.*b

3a.
if (testString=='matlab')
 return true;
 else
 return false;
 
3b. isequal is a way to compare two strings in MatLab. This is different than the == operator since that looks at every letter and gives us 0 or 1, while isequal just looks at the string in its entirity and gives us an answer.
3b. 'Is this equal'=='is this equal'
3b. A='Is this equal'
3b. B='is this equal'
3b. isequal(A,B)

4.The double || increases efficieny since it only looks to see if the first part works and then stops checking. The second one also allows you to provide vectors while the first doesn't allow this possiblity.

5.change the greater than sign to a less than one. x=a/b<10

6.The second one would be more efficient since you can just match them up to each other without having to individually assign them. Also it would be easier to write a function for finding the average if you only had one variable to get them from.

7. 
function [x,y] = getRoot(a,b,c)
    x=(-b)+(sqrt(b^2-4*a*c)/(2*a));
    y=(-b)-(sqrt(b^2-4*a*c)/(2*a));
end

8.
function y =Integral(a,b,c)
  y=integral((x^2+c*x+1),a,b);
end

9.
function y = getFac(n)
if(n==1)
    y=1;
ifelse(n==0)
    y=0;
else((n-1)-(n-2))
    y=n; 
end

