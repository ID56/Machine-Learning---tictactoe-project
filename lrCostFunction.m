function [J, grad] = lrCostFunction(theta, X, y, lambda)
% calculates cost and gradient for our regularized logistic regression
m = length(y); % number of training examples


J = 0;
grad = zeros(size(theta));

t2=theta.^2;
n=size(theta);
J=-sum(y.*log(sigmoid(X*theta))+(1-y).*log(1-sigmoid(X*theta)))/m + ...
lambda*sum(t2(2:n))/(2*m);

grad=(X'*(sigmoid(X*theta)-y))/m +(lambda/m)*theta;

grad(1)= sum((sigmoid(X*theta)-y).*X(:,1))/m;

grad = grad(:);

end
