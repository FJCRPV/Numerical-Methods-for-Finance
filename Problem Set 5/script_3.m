%Francisco Perestrello, 39001
%Script for Question 3 of Problemset 5

MaxLength = 100;
TotalTrials = 1000;
Success = 0;
i = 0;
rng(0); %setting the seed, for best practice

%Each trial
while i <= TotalTrials
    y = randperm(MaxLength,3); %draw three random integers from 1 to 100
    if triangle(y) == true
        Success = Success + 1; %counter of successful trials
    else
    end
    i = i+1; %counter for it to work until the maximum number of trials is reached
end

fprintf('The probability of drawing three integer numbers at random from 1 to 100 that can form a triangle is %.5f.\n', Success/TotalTrials)