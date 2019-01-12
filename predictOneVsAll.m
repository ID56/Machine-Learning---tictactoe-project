function idx = predictOneVsAll(all_theta, X)

%predicting the move in response to current board situation
m = size(X, 1);
num_labels = size(all_theta, 1);

p = zeros(size(X, 1), 1);

% Adding ones to the X data matrix
X = [ones(m, 1) X];     

[p,idx]=max(X*all_theta',[],2);


end
