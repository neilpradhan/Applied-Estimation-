% function h = observation_model(x,M,j) nothing but z hat as mentioned in
% pg 217 of probablistic robotics
% This function is the implementation of the h function.
% The bearing should lie in the interval [-pi,pi)
% Inputs:
%           x(t)        3X1
%           M           2XN
%           j           1X1
% Outputs:  
%           h           2X1
function h = observation_model(x,M,j)
% Fill In This Part
h_1=norm(M(:,j)-x(1:2));% m is the actual landmark point for example (2,0) and x vector is pose of robot
h_2=atan2((M(2,j)-x(2)),M(1,j)-x(1))-x(3);
h_2=mod(h_2+pi,2*pi)-pi;
h=[h_1;h_2];
end