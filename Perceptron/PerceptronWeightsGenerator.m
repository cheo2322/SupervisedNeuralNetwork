% --------------------------------------------------
% Author: Sergio Hidalgo
% Tutor: Francisco Ortega, PhD
% Generate random initial weights and save it in 'W'
% ---------------------------------------------------

function W = PerceptronWeigthsGenerator(Data)
a = -1;                               % Interval for random weights: [-1,1]
b = 1;
W = (b-a).*rand(size(Data,2),1) + a;  % Create it with the MatLab funciton 'rand'
end
