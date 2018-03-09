function EvolW = UpdateNet(EvolW,LR,Output,Target,Input)
New = EvolW(:,end)+(LR*(Target-Output)*Input)';
EvolW = [EvolW New];
end
