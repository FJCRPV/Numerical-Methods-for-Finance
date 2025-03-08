%Francisco Perestrello, 39001
function output = triangle(a,b,c)
%triangle Determines whether three input lengths can form a triangle.
%   Returns True if the numbers can form a triangle, and False if they can't.
a=input("Insert a length for a: ");
b=input("Insert a length for b: ");
c=input("Insert a length for c: ");

if a<=b+c & b<=a+c & c<=a+b
    fprintf("True\n")
else
    fprintf("False\n")
    
end

