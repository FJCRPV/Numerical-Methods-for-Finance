function B = negativetozero(A)
%Francisco Perestrello, 39001
%negativetozero returns a matrix with the negative elements of A replaced with zeros
fprintf('The matrix should be written with:\n1.Brackets at the beggining and at the end;\n2.Commas seperating the different values of a row;\n3.Semicolons seperating the different rows.\n')
A = input('Insert a matrix A : ');
B = max(A,0);
end

