% -----------------------------------------------------------------------------
% Author: Sergio Hidalgo
% Tutor: Francisco Ortega, PhD
% Plot the classification straightline
% Inputs: Data, the data to classify
% Note: This program works for 0 & 1 data, for example when 0 AND 1 = 0
%       For -1 & 1 data check 'GraphDataAdaline'
% ------------------------------------------------------------------------------

function GraphDataPerceptron(Data)
Inp=Data(:,1:end-1);                                    % Take inputs data
Out=Data(:,end);                                        % Take the results
plot(Inp(find(Out),1),Inp(find(Out),2),'ro');hold on;   % Plot it
plot(Inp(find(~Out),1),Inp(find(~Out),2),'gx');hold off;
axis([-1.5, 1.5, -1.5, 1.5])                            % Range for plotting: [-1.5, 1.5] in x and y
