% Program 1.4 - Newton's Method
% Computes approximate solution of f(x)=0 using Newton's method
% Input: function handle f, derivative function handle df, starting guess x0, number of steps k
% Output: Approximate solution xc

function xc = newton(f, df, x0, k)
    x(1) = x0;
    for i = 1:k
        x(i+1) = x(i) - f(x(i)) / df(x(i));
    end
    xc = x(k+1);
end
