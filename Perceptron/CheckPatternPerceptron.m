----% ------------------------------------------------------------------------
% Author: Sergio Hidalgo
% Tutor: Francisco Ortega, PhD
% Check if ou perceptron classify all patterns correctly
% Inputs: Data, the input data (AND, OR tables)
% Outputs: 1 o 0, 1 if all outputs are equal to targets, 0 in the other cases
% ------------------------------------------------------------------------------

function check = CheckPatternPerceptron(Data,EvolW)
Ones = ones(size(Data,1),1)*-1;                                     % Create a -1's column vector to add to Data
check = sum([Data(:,1:end-1) Ones]*EvolW(:,end)-Data(:,end))==0;    % If there is not difference between our outputs and targets, all patterns are well-classified
end
