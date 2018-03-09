% ------------------------------------------------------------------------------------
% Author: Sergio Hidalgo
% Tutor: Francisco Ortega, PhD
% Calculate inputs, outputs and target values
% Inputs: Data, the input data (AND, OR tables)
%         EvolW, the evolution weights matrix
%         i, the pattern Data position to calculate the values
% Outputs: Input, a row vector, an exactly copy of the i Data inputs with a -1 added
%          Output, the ouptut value for the i pattern
%          Target, the expected value result of the i pattern
% ------------------------------------------------------------------------------------

function [Input,Output,Target] = ValoresIOT(Data,EvolW,i)
Input = [Data(i,1:end-1) -1];    % All i Data values, except the last column (target) and add a -1
Output = (Input*EvolW(:,end))>0; % Multiplicate the inputs times the weights vector (the last column of the evolution weights matrix)
Target = Data(i,end);            % The last column of the i patterns
end
