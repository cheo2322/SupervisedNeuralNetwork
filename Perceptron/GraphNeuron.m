

function GraphNeuron(W)
x = -1.5:0.01:1.5;
y = (-W(1).*x+W(end))/W(2);
plot(x,y,'b');
hold on;
