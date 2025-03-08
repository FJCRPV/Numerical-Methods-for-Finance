%Francisco Perestrello, 39001
%Script for question number 3 of PS4

x = linspace(0,6,500); %create a vector with 500 equally spaced points from 0 to 6

p = [1 -6 8]; %define the polynomial coefficients
y = polyval(p,x); %define a vector with the results of each element of x being applied in the polynomial

y = y + randn(1,length(x)); %add a random error to y

p2 = polyfit(x,y,2); %estimates the polynomial p2 of second order that best fits the set of points x and y

x2 = linspace(0,6,1000); %create a vector with 1000 equally spaced points from 0 to 6
y2 = polyval(p2,x2); %define a vector with the results of each element of x2 being applied in the polynomial

plot(x,y,'o') %plot the points used to estimate the polynomial
hold on %keep plotting on the same figure
plot(x2,y2) %plot the estimated polynomial