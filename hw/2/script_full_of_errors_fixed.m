a = 2; %1a is a variable that doesn't work in matlab
b = 2;
X = 2;
y = X + 4; % is it 6?
pi = 4 * atan(1); %You don't need a ; after the *
disp(pi)
pi = 3.14159;
disp(tan(pi));
c = 4^3^2^3;
d = ((c-78564)/c + 32);
year = '2017';%2017 has to be in quotes in order to be used as a variable
disp(['The year is ' year]); % does it display 2017 correctly?
stuff = {'a' 'b' 4 21 'c'};
beginning = stuff(1);%There is no stuff(0)
final = stuff(5);
discount = .12; %We can't have a percent sign after the number
AMOUNT = 120.;%Invalid symbol
amount = 120;%Invalid symbol
class = 'INF1100, gr 2';%You only need one quote mark to display it
fox = false;%We are setting the fox equal to the value of false
wolf = fox == true;
Persian = ('Persian is a human language');%You don't need brackets
Spanish = {'Spanish ','is ','another','language'};
disp('Persian is not the same as Spanish');%Brackets aren't needed
%These results are the ones that are printed since they are the only ones
%with the display function