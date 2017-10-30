Question 1:
GaussProb(0,2,1)
function y = GaussProb(mu,sigma,x)
    y=1/(sqrt(2*pi)*sigma)*exp(-.5*((x-mu)/sigma)^2);
end 

Question 2:
Time(67,3.7,1.038,5.4E-3,4,100,70)
Time(67,3.7,1.038,5.4E-3,20,100,70)
function y = Time(M,c,p,K,T0,Tw,Ty)
    y=((M^(2/3)*c*p^(1/3)))/(K*pi^2*(4*pi/3)^(2/3))*log(.76*((T0-Tw)/(Ty-Tw)));
end

Question 3:
function Polarstruct=getPolar1(CartStruct)
if (isfield(Polarstruct,'r'||Polarstruct.phi)==(CartStruct.x,CartStruct.y);
    Polarstruct.r=sqrt(CartStruct.x^2+CartStruct.y^2);
    Polarstruct.phi=atan(CartStruct.y/CartStruct.x);
else 
    disp('Error');
end

function CartStruct=getCart(Polarstruct)
if(isfield(CartStruct,'x'||CartStruct,'y')==(CartStruct.r,CartStruct.phi)
  CartStruct.x=Polarstruct.r*cos*Polarstruct.phi
  CartStruct.y=Polarstruct.r*sin*Polarstruct.phi
  else 
  disp('Error');
  end

Question 4:
function y= getByte(string)
    x=dir(string);
    y=struct2table(x);
    z=sum(n.bytes);
    disp(z);
end

Question 5:
function Fib
Error=('The input argument is not a non-negative number.');
x=input('Please enter a non-negative integer or type stop:','s');
if strcmp(x,'stop')== 1     
    return;
elseif strcmp(x,'stop')==0
    s=str2double(x);
    if isreal(s)&&s>0&&round(s)
      disp(num2str(getFib(s)))
    else
        disp(Error)
        return;
    end 
endfunction y = getFib(n_int)
    if(n_int==0)
        y=0;
    elseif(n_int==1)
        y=1;
    else
        y=getFib(n_int-1)+getFib(n_int-2);
    end   
function y = getFib(n_int)
    if(n_int==0)
        y=0;
    elseif(n_int==1)
        y=1;
    else
        y=getFib(n_int-1)+getFib(n_int-2);
    end   

Question 6:
function area=getTriangleArea(vertices)
    node1=vertices{1};
    node2=vertices{2};
    node3=vertices{3};
    area=.5*(abs(x2y3-x3y2-x1y3+x3y1+x1y2-x2y1));
end

Question 7:
function area=getTriangleArea(vertices)
    node1=vertices{1};
    node2=vertices{2};
    node3=vertices{3};
    area=.5*(abs(x2y3-x3y2-x1y3+x3y1+x1y2-x2y1));
end

Question 8:
function n=genFunc(varargin)
switch nargin
case 0
    a=0
    b=0
    c=0
case 1
    a=varargin{1}
    b=0
    c=0
case2
    a=varargin{1}
    b=varargin{2}
    c=0
case 3
    a=varargin{1}
    b=varargin{2}
    c=varargin{3}
otherwise
   error('error')
   return;
end
function y=evalFunc(x)
    y=a*x^2+b*x+c;
end
y=@evalFunc;
end


