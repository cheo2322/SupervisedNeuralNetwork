% -----------------------------------------------------------------------------
% Author: Sergio Hidalgo
% Tutor: Francisco Ortega, PhD
% Plot the classification straightline
% Inputs: W, a weights vector for plotting
% ------------------------------------------------------------------------------

function GraphNeuron(W)
x = -1.5:0.01:1.5;          % Plot in the range [-1,1] of 0.01 in 0.01
y = (-W(1).*x+W(end))/W(2); % The equation used for plotting
plot(x,y,'b');
hold on;
