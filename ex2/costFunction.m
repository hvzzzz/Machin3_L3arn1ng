function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%%
j_1=y.*log(sigmoid(theta'*X(:,:)'))';
j_2=(1-y).*log(1-sigmoid(theta'*X(:,:)'))';
J=1/m*sum((-j_1-j_2));
grad_1=1/m*sum(((sigmoid(theta'*X(:,:)')'-y).*X(:,1)));
grad_2=1/m*sum(((sigmoid(theta'*X(:,:)')'-y).*X(:,2)));
grad_3=1/m*sum(((sigmoid(theta'*X(:,:)')'-y).*X(:,3)));

grad=[grad_1 grad_2 grad_3]';
%

%j_1=y'*log(sigmoid(X*theta));
%j_2=(1-y)'*log(1-sigmoid(X*theta));
%J=1/m*sum((-j_1-j_2));
%rad=1/m*X'*(sigmoid(X*theta)-y);



% =============================================================

end
