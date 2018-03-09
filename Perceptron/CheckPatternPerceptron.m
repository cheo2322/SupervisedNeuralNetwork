function check = CheckPattern(Data,EvolW)
flag = 0;
for i=1:size(Data,1)
    [~,Output,Target]=ValoresIOT(Data,EvolW,i);
    if Output==Target
        flag = flag+1;
    end
end

if flag==size(Data,1)
    check = 1;
else
    check = 0;
end
end
