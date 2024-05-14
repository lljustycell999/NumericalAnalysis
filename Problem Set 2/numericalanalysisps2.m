% Section 6.1: Initial Value Problems (IVPs)
fprintf('\n');
disp("Section 6.1 Computer Problems:");
fprintf('\n');
disp("Problem 1b:");
fprintf('\n');

% This is the directory that contains all of the provided MATLAB 
% functions needed to solve the following computer problems 
% (This line may have to be modified or removed)
addpath('C:\Users\jcountry\Documents');

% Problem 1b: Apply Euler's Method with step size h = 0.1 on [0, 1] 
% to the initial value problem y' = t^2 * y, y(0) = 1

[ti, wi] = euler1([0 1], 1, 10);

% Calculate error for Euler's Method
y = exp(ti.^3/3);
error = abs(y - wi);

% Round wi and error to 4 decimal places
wi = round(wi, 4);
error = round(error, 4);

% Create a table
disp("Table of Euler's Method with step size h = 0.1 on [0, 1] " + ...
    "for the IVP y' = t^2 * y, y(0) = 1");
dataTable = table(ti', wi', error', 'VariableNames', {'ti', 'wi', 'Error'});
disp(dataTable);

% Problem 2b: Plot the Euler's Method approximate solutions for the IVP
% y' = t^2 * y, y(0) = 1 on [0, 1] for step sizes h = 0.1, 0.05, 0.025
% along with the exact solution
[t0, w0] = euler1([0 1], 1, 10);
[t1, w1] = euler1([0 1], 1, 20);
[t2, w2] = euler1([0 1], 1, 40);

% Compare with the exact solution. The exact solution was found by 
% analytic method(s).
hold on;
t=0:0.025:1;
y=exp(t.^3/3);
plot(t,y);
plot(t0,w0);
plot(t1,w1);
plot(t2,w2);
xlim([0,1]);
hold off;

% Section 6.2: Analysis of IVP Solvers
disp("Section 6.2 Computer Problems:");
fprintf('\n');
disp("Problem 1b:");
fprintf('\n');   

% Apply the Explicit Trapezoid Method on a grid of step size h = 0.1 in 
% [0, 1] to the IVP y' = t^2 * y, y(0) = 1. Print a table of the t values,
% approximations, and global truncation errors at each step

[ti, wi] = trapezoid([0, 1], 1, 10);

% Calculate error for Explicit Trapezoid Method
y = exp(ti.^3/3);
error = abs(y - wi);

% Round wi and error to 4 decimal places
wi = round(wi, 4);
error = round(error, 4);

% Create a table
disp("Table of Explicit Trapezoid Method with step size h = 0.1 on [0, 1] " + ...
    "for the IVP y' = t^2 * y, y(0) = 1");
dataTable = table(ti', wi', error', 'VariableNames', {'ti', 'wi', 'Global Truncation Error'});
disp(dataTable);

% Problem 2b: Plot the approximate solutions for the IVP y' = t^2 * y, y(0)
% = 1 on [0, 1] for step sizes h = 0.1, 0.05, and 0.025 along the true
% solution.
[t0, w0] = trapezoid([0, 1], 1, 10);
[t1, w1] = trapezoid([0, 1], 1, 20);
[t2, w2] = trapezoid([0, 1], 1, 40);

% Compare with the exact solution. The exact solution was found by 
% analytic method(s).
hold on;
t=0:0.025:1;
y=exp(t.^3/3);
plot(t,y);
plot(t0,w0);
plot(t1,w1);
plot(t2,w2);
xlim([0,1]);
hold off;

% Section 7.1: Shooting Method
disp("Section 7.1 Computer Problems:");
fprintf('\n');
disp("Problem 1a:");
fprintf('\n');

% Problem 1a: Apply the shooting method to the linear BVP
% y'' = y + (2/3)e^t, y(0) = 0, y(1) = (1/3)e. Begin with finding an
% interval [s0, s1] that brackets a solution. Use the MATLAB command fzero
% or the Bisection Method to find the solution. Plot the approximate
% solution on the specified interval

Note: Ffunction required an updated version in order to solve this problem:
function z=Ffunction(s)
 a=0;
 b=1;
 ya=0;
 yb=(1/3) * exp(1);
 ydot=@(t,y) [y(2);y(1) + (2/3).* exp(t)];
 [t,y]=ode45(ydot,[a,b],[ya,s]);
 z=y(end,1)-yb;

sstar1 = bisect(@Ffunction, 0, 1, 0.00005);
hold on;
t = 0:0.1:1;
plot(t, sstar1);
hold off;

% Section 7.2: Finite Difference Methods
disp("Section 7.2 Computer Problems:");
fprintf('\n');
disp("Problem 1a:");
fprintf('\n');

% Problem 1a: Use finite differences to approximate solutions to the linear BVP
% y'' = y + (2/3)e^t, y(0) = 0, y(1) = (1/3)e for n = 9, 19, and 39. Plot
% the approximate solutions together with the exact solution y(t) = te^t /
% 3 and display the errors as a function of t in a separate semilog plot.
w1 = nlbvpfd([0, 1], [0, (1/3) * exp(1)], 9);
w2 = nlbvpfd([0, 1], [0, (1/3) * exp(1)], 19);
w3 = nlbvpfd([0, 1], [0, (1/3) * exp(1)], 39);

% Generate time vector based on the length of the solutions
t1 = linspace(0, 1, length(w1));
t2 = linspace(0, 1, length(w2));
t3 = linspace(0, 1, length(w3));

hold on;
plot(t1, w1);
plot(t2, w2);
plot(t3, w3);

% Plot the exact solution
t_exact = linspace(0, 1, 100); % Increase the number of points for a smoother plot
y_exact = t_exact .* exp(t_exact) / 3;
plot(t_exact, y_exact);

figure;

% Calculate the errors at the same set of points
error1 = abs(w1 - y_exact);
error2 = abs(w2 - y_exact);
error3 = abs(w3 - y_exact);

% Plot the errors on a semilog plot
semilogy(t1, error1);
semilogy(t2, error2);
semilogy(t3, error3);

hold off;
