function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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

% Hypothesis: Sigmoid Function
h=sigmoid(X*theta);
% Cost Function J:
J=(-y'*log(h) - (1-y)'*log(1 - h))/m + theta'*theta*(lambda/m);
% Grad
thetaReg=theta(2:length(theta),:);
grad1 = - X'*(y-h)/m;
grad2 = thetaReg*(lambda/m);
grad2=[0;grad2];
grad=grad1+grad2;



% =============================================================

end
