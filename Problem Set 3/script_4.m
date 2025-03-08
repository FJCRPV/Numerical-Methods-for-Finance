%Francisco Perestrello, 39001
%Exercise 5
%Point 1
%for the first three elements of the table, I explicitly wrote the code for each, as they were not constant multiples of eachother.
n = 1; %in the first row, 'n' is equal to one
xharm = 0;
for i = 1:n %a 'for' loop that goes from one to 'n'. In this case, to one
   xharm = xharm + 1/i; %this is simply the formula for a harmonic series
end

xlog = log(n); %defining xlog 
xdiff = xharm - xlog; %defining xdiff 

fprintf('%10s \t\t %8s \t %8s \t %8s\n','n','xharm','xlog','xdiff'); %printing the first row of the table
fprintf('\t\t%.0f \t\t\t %.4f \t %.4f \t %.6f\n',n,xharm,xlog,xdiff); %printing the second row of the table


n = 10; %in the second row, 'n' is equal to ten
xharm = 0; %redifining 'xharm' to be zero to begin with
for i = 1:n %a 'for' loop that goes from one to 'n'. In this case, to ten
   xharm = xharm + 1/i; %this is simply the formula for a harmonic series
end

xlog = log(n); %definiing xlog
xdiff = xharm - xlog; %defining xdiff

fprintf('\t\t%.0f \t\t\t %.4f \t %.4f \t %.6f\n',10,xharm,xlog,xdiff); %printing the third row of the table


n = 50; %in the third row, 'n' is equal to fifty
xharm = 0; %redifining 'xharm' to be zero to begin with
for i = 1:n %a 'for' loop that goes from one to 'n'. In this case, to fifty
   xharm = xharm + 1/i; %this is simply the formula for a harmonic series
end

xlog = log(n); %definiing the xlog function
xdiff = xharm - xlog; %defining the xdiff function

fprintf('\t\t%.0f \t\t\t %.4f \t %.4f \t %.6f\n',50,xharm,xlog,xdiff); %printing the fourth row of the table

%from here on out, I was able to create a 'while' loop, as the following 'n' became the former 'n', times ten
n=100;
while n<=1000001 %to guarantee the loop stops in the last row we want
    xharm = 0; %redifining 'xharm' to be zero to begin with
    for i = 1:n %a "for" loop that goes from one to 'n'.
        xharm = xharm + 1/i; %this is simply the formula for a harmonic series
    end
    xlog = log(n); %definiing the xlog function
    xdiff = xharm - xlog; %defining the xdiff function
    if n==1000000 %this was created only for the output to look prettier (it has one less '\t')
        fprintf('\t\t%.0f \t %.4f \t %.4f \t %.6f\n',n,xharm,xlog,xdiff); %printing the last row of the table
        n=n*10; %chaning n so the loop continues
    else
        fprintf('\t\t%.0f \t\t %.4f \t %.4f \t %.6f\n',n,xharm,xlog,xdiff); %printing rows 5 through 8 of the table
        n=n*10; %chaning n so the loop continues
    end
end


%Point 2

L = 15; %defining 'L'
xharm = 0; %redifining 'xharm' to be zero to begin with
nhat = 1; %initial starting value of 'nhat'
while xharm<L                 %'while' loop that works until the harmonic sum is equal to or greater than 'L' (15)
    xharm = xharm + 1/nhat;         %this is simply the formula for a harmonic series
    nhat = nhat + 1;                %adds one to 'nhat', creating a counter
end                     
fprintf('\nThe harmonic sum is: %.12f',xharm) %outputs the harmonic sum, to check if it is indeed greater than 'L' (15)
fprintf('\nThe smallest value of n such that xharm > %.0f is: %.0f\n',L,nhat) %outputs our counter, 'nhat'



%Point 3
%for this point, I wasn't able to use the 'You can use the last value of xdiff to calculate an estimate of 'nat' for any value of 'L''. Thus, I created a code similar to before, which outputs the asked values.

L = 20; %defining 'L'
xharm = 0; %redifining 'xharm' to be zero to begin with
nhat = 1; %initial starting value of 'nhat'
while xharm<L                 %'while' loop that works until the harmonic sum is equal to or greater than 'L' (20)
    xharm = xharm + 1/nhat;         %this is simply the formula for a harmonic series
    nhat = nhat + 1;                %adds one to 'nhat', creating a counter
end                      
fprintf('\nThe harmonic sum is: %.12f',xharm) %outputs the harmonic sum, to check if it is indeed greater than 'L' (20)
fprintf('\nThe smallest value of n such that xharm > %.0f is: %.0f\n',L,nhat) %outputs our counter, 'nhat'