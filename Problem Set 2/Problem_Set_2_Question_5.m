%Script of Problem Set 2, Question 5
%Francisco Perestrello, 39001

%Load the text file with the data
d = load('datamoneyr.txt');

%Create variables for the different columns of the data
year = d(:,1);
m = d(:,2);
r = d(:,3);

%Create variables for the different subsets -> 1920-1069, and 1970-2019
m1 = d(year<=1969,2);
r1 = d(year<=1969,3);
m2 = d(year>1969,2);
r2 = d(year>1969,3);

%Plot the data, using different colours for the different subsets
figure
plot(r1*100,m1,'b','Marker','o')
hold on %used to keep plotting on the same figure
plot(r2*100,m2,'r','Marker','o')
hold off
xlabel('Interest Rate (%) (r)')
ylabel('Real Demand for Money (m)') %label the axes

%Calculate β(total), β1(first period) and β2(second period)
y = log (m);
X = [ones(length(r),1),log(r)]; % create a T-by-1 matrix with the first column being a column of ones, with the same length as the second column
B = inv(X.'*X)*X.'*y;

y1 = log (m1);
X1 = [ones(length(r1),1),log(r1)];
B1 = inv(X1.'*X1)*X1.'*y1;

y2 = log (m2);
X2 = [ones(length(r2),1),log(r2)];
B2 = inv(X2.'*X2)*X2.'*y2;

%Show the values of the elasticities
fprintf('The elasticity of the real demand for money with respect to the interest rate for the whole period is: %.4f\nThe elasticity of the real demand for money with respect to the interest rate for the sample from 1920 to 1969 is: %.4f\nThe elasticity of the real demand for money with respect to the interest rate for the sample from 1970 to 2019 is: %.4f\n', B(2,1), B1(2,1), B2(2,1))
