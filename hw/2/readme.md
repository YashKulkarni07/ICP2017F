Question 1:
a=1 assigns the variable a to the value of 1 as a double value  
b='x' assigns the variable b to the char x  
c=true assigns the variable c to the number 1 and the logical function  
whos a b c displays a cell with the variables information used in the workplace  
a==c compares the two variables together and returns true/1 if they are equal  
a+c adds the two variables togethers  
d=[1 2 3 4] creates a row vector    
e=['a' 'b' 'c' 'd'] creates a row vector with chars  
f=['abcd'] creates a row vector with chars without any spaces  
g={'a' 'b' 'c' 'd'} creates an array with strings in the cells  
h={a b c d} calls upon the previous variables and the information shared and prints displays that  
whos d e f g h displays a cell with the variable information used in the workplace   
Question 2:  
You can't go past the range that is assigned.   
If we typecast an bigger integer in int8, then we get the highest number possible which is 127  
If we typecast an smaller integer in int8, then we get the smallest possible which is -128  
The largest integer for int32 is 2147483647; the smallest integer for int32 is -2147483648  
The largest integer for int64 is 9223372036854775807; the smallest integer for int64 is -9223372036854775808  
Question 3:  
The answer to 1\2 is 2 since the position of the '\' causes it to become 2/1  
The answer to 1/2 is .500 since matlab uses float and .5 is the accurate float value  
int8(1/2) rounds up to 1  
int8(1/3) rounds down to 0  
-5^2 is -25 since the one value of 5 remains negative when multiplied by another 5 value  
(-5)^2 is 25 since both values of 5 are negative  
10-6/2 is 7 because we divide the 6 by a 2 before subtracting it  
5*4/2*3 is is 30 because we divide the 4 by the 2 and then multiply it by the 5 and 3 respectively.  
Question 4a:
a=[1,0;2,1]  
b=[-1,2;0,1]  
c=[3;2]  
d=[5]  
Question 4b:
 a+b=[0,2;2,2] matlab is just adding a and b together.  
 a.*b=[-1,0;0,1] matlab is just multiply a and b together  
 a*b=[-1,2;-2,4] matlab is doing matrix multiplication  
 a*c=[3;7] matlab is doing matrix multiplication  
 a+c=[4,3;3,4] matlab is just adding the two values together  
 a+d=[6,5;6,7] matlab is adding the two values together  
 a*d=[5,0;5,10] matlab is doing multiplication  
 a.*d=[5,0;5,10] matlab is doing matrix multiplication  
Question 5:    
a=[2 2 2]    
a=diag(a)    
eye(3)*2  
zeros(3)+diag(a)  
Question 8:  
I get an error.This error is because myscript.m isn't defined in the new directory I am using.  
