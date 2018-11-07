function [J,theta]=
i=0
nr_iter=1500;
h=sigmoid
for i=1:nr_iter
    theta=theta-(alpha/m)*X'*(h-y)
    J=costFunction(theta, X,y);
end