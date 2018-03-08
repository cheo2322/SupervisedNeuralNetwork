clear;
clc;
close all;

load DatosLS50
LR=0.1;

W=PerceptronWeigthsGenerator(Data);
Epoc=1;
EvolW=W;
while ~CheckPattern(Data,EvolW(:,end)) && Epoc<1000
    for i=1:size(Data,1)
        [Input,Output,Target]=ValoresIOT(Data,EvolW,i);
        if Output~=Target
           EvolW=UpdateNet(EvolW,LR,Output,Target,Input);
        end
    end
    Epoc=Epoc+1;
end

for i=1:size(EvolW,2)
    GrapNeuron(EvolW(:,i))
    GrapDatos(Data)
    drawnow
end