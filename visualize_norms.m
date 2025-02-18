clear all;
close all;

p = .001;
x = [-2:.01:2];
for i = 1:length(x)
    for j = 1:length(x)
        f(i,j) = abs(x(i))^p+abs(x(j))^p;
        f(i,j) = (f(i,j))^(1/p);
    end
end 

contour(f);