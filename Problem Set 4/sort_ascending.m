%Francisco Perestrello, 39001
function A = sort_ascending(A)
%sort_ascending receives a vector as an input, and returns the vector sorted in ascending order
A = input("Insert a vector A, in the form of '[x1,x2,x3,...]': "); %requesting a vector input
n=length(A); %storing the length of the vector
for j=1:1:n-1 %creating a variable that will assure the loop runs until the vector is totally sorted
    for i=1:1:n-1 %creating a variable for the different positions of the elements in the vector
        if A(i)>A(i+1) %comparing each element with the next 
            temp=A(i); %storing the value of an element
            A(i)=A(i+1); %changing it for the element next to it
            A(i+1)=temp; %completing the swap, changing the following element with the stored element
        end
    end
end
end