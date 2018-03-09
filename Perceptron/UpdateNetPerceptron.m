% --------------------------------------------------------------------------------------
% Author: Sergio Hidalgo
% Tutor: Francisco Ortega, PhD
% Update the weights, adding the new weights to 'EvolW'
% Inputs: EvolW, the evolution weight matrix
%         LR, the learning rate
%         Output, the calculated output for the current pattern
%         Target, the expected result for the curent pattern
%         Input, the inputs vector for the current pattern
% Outputs: EvolW, the evoltuion weights matrix, with a new column (vector weight) added
% --------------------------------------------------------------------------------------

function EvolW = UpdateNet(EvolW,LR,Output,Target,Input)
New = EvolW(:,end)+(LR*(Target-Output)*Input)'; % 
EvolW = [EvolW New];
end
