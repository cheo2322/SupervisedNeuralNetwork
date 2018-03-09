% Clear all variables, the command windows and close all windows
% ----------------------------------------
clear;
clc;
close all;
% ---------------------------------------

load DatosAND  % Loading Data for Perceptron. It is loaded in 'Data'. You must have 'DatosAND' in the same folder that this program, or re-structure this calling
LR = 0.1;      % Learning Rate

% Perceptron Functionality
% -----------------------------------
W = PerceptronWeigthsGenerator(Data);                       % Generate the initial Random Weights
EvolW = W;                                                  % Random weights are added to the evolution weights matrix; at the start
Epoc = 1;                                                   % Starting epochs
E = Epoc;                                                   % Add the correspondent epoch to a vector for showing in the graph

while ~CheckPattern(Data,EvolW(:,end)) && Epoc<100          % while we do not have a correct classification, continue editing weights
    for i=1:size(Data,1)                                    % loop for each inputs set
        [Input,Output,Target] = ValoresIOT(Data,EvolW,i);   % calculate the necessary values
        if Output ~= Target                                 % update the weights iff it is necessary
           EvolW = UpdateNet(EvolW,LR,Output,Target,Input); 
           E = [E Epoch];                                   % Add the new epoch for plotting
        end
    end
    Epoc=Epoc+1;                                            % go to the next epoch
end
% ---------------------------------------------

% Plot data and perceptron classification
% ---------------------------------------------
for i=1:size(EvolW,2)                   % Loop for in each weight update                                 
    GrapNeuron(EvolW(:,i))              % Graph each weight
    GrapDatos(Data)                     % Gaph the correspondent data (AND, OR, ...)
    title(['Epoch: ',num2str(E(i))]);   % Put the correspondet epoch as title
    drawnow
end
