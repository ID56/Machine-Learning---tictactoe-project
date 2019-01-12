function [all_theta] = oneVsAll(X, y, num_labels, lambda)
%all theta returns multiple logistic regression classifiers
m = size(X, 1);
n = size(X, 2);

all_theta = zeros(num_labels, n + 1);

% Adding ones to the X data matrix
X = [ones(m, 1) X];

  for c=1:num_labels
% Setting initial theta
     initial_theta = zeros(n + 1, 1);
   
% Setting options for fmincg
     options = optimset('GradObj', 'on', 'MaxIter', 100);
 
    [theta] = ...
         fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), ...
                 initial_theta, options);
%checking if y is equal to the current class      
    all_theta(c,:)=theta;

endfor











% =========================================================================


end
