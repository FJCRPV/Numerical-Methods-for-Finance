function w = triangle(v)
%triangle Checks if sides a, b, c can form a triangle
%   Usage:  y = triangle(v), returns true or false
%   v must be a vector with three entries, v = [a,b,c]
%
% Also works if one or any of the numbers are negative or zero.

a = v(1);
b = v(2);
c = v(3);

if (a < b + c) && (b < a + c) && (c < a + b)
    w = true;
else
    w = false;
end

end

