%Francisco Perestrello, 39001
%Script for Question 1 of Problemset 5

p = [1 -1 -1 1]; %define the polynomial
r = roots(p); %use the roots function to find the roots
fprintf('Through the roots function, we found the roots of f to be %.0f, %.0f and %.0f.\n', r(1),r(2),r(3))


%using the bisection method for the first root
a=-2;
b=0;
while b-a>eps(1)
    x=(a+b)/2;
    if x^3-x^2-x+1 > 0
        b=x;
    else
        a=x;
    end
end

%using the bisection method for the second root
c=0;
d=2;
while d-c>eps(1)
    x=(c+d)/2;
    if x^3-x^2-x+1 > 0
        d=x;
    else
        c=x;
    end
end

fprintf('Through the bisection method, we found the roots of f to be %.0f and %.0f.\n', a, c)

%the function polynomial is defined as an .m file
t1 = fzero(@polynomial, -2); %testing for different initial points
fprintf('Through the fzero function and with an initial guess of -2, we found the root %.0f.\n', t1)
t2 = fzero(@polynomial, 0);
fprintf('Through the fzero function and with an initial guess of 0, we found the root %.0f.\n', t2)
t3 = fzero(@polynomial, 2);
fprintf('Through the fzero function and with an initial guess of 2, we found the root %.0f.\n', t3)
t4 = fzero(@polynomial, [-1.1,1.1]); %testing for the interval suggested
fprintf('Through the fzero function and with an initial guess of [-1.1,1.1], we found the root %.0f.\n', t4)

%we see that for different initial conditions, the function fzero gives us
%the first root of the function, -1, and only in very specific conditions
%it is able to return the second root, 1. This happens because there is a
%sign change around the first root, -1, and such thing never happens around
%the second root, 1. The second root is exactly 0 and every value of the
%function around it is positive. Thus, fzero can't find a sign change
%around 1.