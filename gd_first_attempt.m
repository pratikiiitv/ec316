%GD : First Attempt
%f, df, x_0
%x_{k+1} = x_k - step_size * df(x_k)
%|| x_{k+1} - x_k || < espilon

clear all;
close all;

% f = x(1)^2 + x(2)^2
% df = 2[x(1) x(2)]^T

x = [-8:.5:8];
for i = 1:length(x)
    for j = 1:length(x)
        x1(i,j) = x(i); x2(i,j) = x(j); 
        f(i,j) = x(i)^2+5*x(j)^2;
        df1(i,j) = 2*x(i); df2(i,j) = 10*x(j);
    end
end 

x_new = [5, 7]'; x_old = randn(2,1);
epsilon = 0.05;
step_size = .1;
figure(1);  
contour(x1,x2,f); grid on; hold on;

while norm(x_old - x_new) > epsilon
    x_old = x_new;
    pause(.2);
    plot(x_old(1),x_old(2),'+');
    df = 2*[x_old(1) 5*x_old(2)]'; %df = df/norm(df);
    quiver(x_old(1),x_old(2),df(1),df(2));
    x_new = x_old - step_size * df;
end
