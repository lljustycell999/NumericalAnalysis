% Section 1.1: The Bisection Method
fprintf('\n');
disp("Section 1.1 Computer Problems:");
fprintf('\n');

% This was the directory path that contained my bisect, fpi, and newton functions (this line may have to be modified or removed)
addpath('C:\Users\jcountry\Documents');

% Problem 1: Use the Bisection Method to find the root to six decimal places

% (a): x^3 = 9
% x^3 - 9 = 0
a = 2; % (2)^3 - 9 = -1
b = 3; % (3)^3 - 9 = 18
f = @(x) x.^3 - 9;
approx_solution = bisect(f, a, b, 0.5 * 10^-6);
disp(['Approximate Solution for Problem 1, Part A: ', num2str(approx_solution, '%.6f')]);

% (b): 3x^3 + x^2 = x + 5
% 3x^3 + x^2 - x - 5 = 0
a = 1; % 3(1)^3 + (1)^2 - (1) - 5 = -2
b = 2; % 3(2)^3 + (2)^2 - (2) - 5 = 21
f = @(x) (3 * x.^3) + x.^2 - x - 5;
approx_solution = bisect(f, a, b, 0.5 * 10^-6);
disp(['Approximate Solution for Problem 1, Part B: ', num2str(approx_solution, '%.6f')]);

% (c): cos^2(x) + 6 = x
% cos^2(x) - x + 6 = 0
a = 6; % cos^2(6) - (6) + 6 ~= 0.9219
b = 7; % cos^2(7) - (7) + 6 ~= -0.4316
f = @(x) cos(x).^2 - x + 6;
approx_solution = bisect(f, a, b, 0.5 * 10^-6);
disp(['Approximate Solution for Problem 1, Part C: ', num2str(approx_solution, '%.6f')]);
fprintf('\n');

% Problem 3: Use the Bisection Method to locate all solutions
% of the following equations. Sketch the function by using MATLAB's
% plot command and identify three intervals of length one that contain
% a root. Then find the roots to six correct decimal places.

% (a) 2x^3 - 6x - 1 = 0
f = @(x) (2 * x.^3) - (6 * x) - 1;
x = linspace(-5, 5, 100);
y = f(x);
figure;
plot(x, y);
title('f(x) = 2x^3 - 6x - 1');

grid on;
line([0, 0], ylim, 'Color', 'k', 'LineWidth', 1, 'LineStyle', '-');
line(xlim, [0, 0], 'Color', 'k', 'LineWidth', 1, 'LineStyle', '-');

% Root 1:
a = -2.5;
b = -1.5;
approx_solution = bisect(f, a, b, 0.5 * 10^-6);
disp(['1st Approximate Solution for Problem 3, Part A: ', num2str(approx_solution, '%.6f')]);
disp(['Interval Used: [', num2str(a), ', ', num2str(b), ']']);

% Root 2:
a = -1;
b = 0;
approx_solution = bisect(f, a, b, 0.5 * 10^-6);
disp(['2nd Approximate Solution for Problem 3, Part A: ', num2str(approx_solution, '%.6f')]);
disp(['Interval Used: [', num2str(a), ', ', num2str(b), ']']);

% Root 3:
a = 1;
b = 2;
approx_solution = bisect(f, a, b, 0.5 * 10^-6);
disp(['3rd Approximate Solution for Problem 3, Part A: ', num2str(approx_solution, '%.6f')]);
disp(['Interval Used: [', num2str(a), ', ', num2str(b), ']']);

% (b) e^{x-2} + x^3 - x = 0

f = @(x) exp(x-2) + x.^3 - x;
y = f(x);
figure;
plot(x, y);
title('f(x) = e^{x-2} + x^3 - x');

grid on;
line([0, 0], ylim, 'Color', 'k', 'LineWidth', 1, 'LineStyle', '-');
line(xlim, [0, 0], 'Color', 'k', 'LineWidth', 1, 'LineStyle', '-');

% Root 1:
a = -2;
b = -1;
approx_solution = bisect(f, a, b, 0.5 * 10^-6);
disp(['1st Approximate Solution for Problem 3, Part B: ', num2str(approx_solution, '%.6f')]);
disp(['Interval Used: [', num2str(a), ', ', num2str(b), ']']);

% Root 2:
a = -0.7;
b = 0.3;
approx_solution = bisect(f, a, b, 0.5 * 10^-6);
disp(['2nd Approximate Solution for Problem 3, Part B: ', num2str(approx_solution, '%.6f')]);
disp(['Interval Used: [', num2str(a), ', ', num2str(b), ']']);

% Root 3:
a = 0.7;
b = 1.7;
approx_solution = bisect(f, a, b, 0.5 * 10^-6);
disp(['3rd Approximate Solution for Problem 3, Part B: ', num2str(approx_solution, '%.6f')]);
disp(['Interval Used: [', num2str(a), ', ', num2str(b), ']']);

% (c) 1 + 5x - 6x^3 - e^{2x} = 0

f = @(x) 1 + (5 * x) - (6 * x.^3) - exp(2 * x);
y = f(x);
figure;
plot(x, y);
title('f(x) = 1 + 5x - 6x^3 - e^{2x}');

grid on;
line([0, 0], ylim, 'Color', 'k', 'LineWidth', 1, 'LineStyle', '-');
line(xlim, [0, 0], 'Color', 'k', 'LineWidth', 1, 'LineStyle', '-');

% Root 1:
a = -1.7;
b = -0.7;
approx_solution = bisect(f, a, b, 0.5 * 10^-6);
disp(['1st Approximate Solution for Problem 3, Part C: ', num2str(approx_solution, '%.6f')]);
disp(['Interval Used: [', num2str(a), ', ', num2str(b), ']']);

% Root 2:
a = -0.6;
b = 0.4;
approx_solution = bisect(f, a, b, 0.5 * 10^-6);
disp(['2nd Approximate Solution for Problem 3, Part C: ', num2str(approx_solution, '%.6f')]);
disp(['Interval Used: [', num2str(a), ', ', num2str(b), ']']);

% Root 3:
a = 0.45;
b = 1.45;
approx_solution = bisect(f, a, b, 0.5 * 10^-6);
disp(['3rd Approximate Solution for Problem 3, Part C: ', num2str(approx_solution, '%.6f')]);
disp(['Interval Used: [', num2str(a), ', ', num2str(b), ']']);

fprintf('\n');

% Section 1.2: Fixed-Point Iteration
disp("Section 1.2 Computer Problems:");
fprintf('\n');

% Problem 1: Apply Fixed-Point Iteration to find the solution
% of each equation to eight correct decimal places.

% (a) x^3 = 2x + 2
% x = (2x+2)^(1/3)
f = @(x) ((2 * x) + 2)^(1/3);
x0 = 0;
k = 100;
approx_solution = fpi(f, x0, k);
disp(['Approximate Solution for Problem 1, Part A: ', num2str(approx_solution, '%.8f')]);

% (b) e^x + x = 7
% e^x = - x + 7 -> x = ln(-x + 7)
f = @(x) log(-x + 7);
x0 = 5;
k = 100;
approx_solution = fpi(f, x0, k);
disp(['Approximate Solution for Problem 1, Part B: ', num2str(approx_solution, '%.8f')]);

% (c) e^x + sin(x) = 4
% e^x = 4 - sin(x) -> x = ln(4 - sin(x))
f = @(x) log(4 - sin(x));
x0 = 1;
k = 100;
approx_solution = fpi(f, x0, k);
disp(['Approximate Solution for Problem 1, Part C: ', num2str(approx_solution, '%.8f')]);
fprintf('\n');

% Problem 5: g(x) = cos^2(x)
f = @(x) cos(x).^2;
x0 = 1;
k = 1000;
approx_fixed_point = fpi(f, x0, k);
disp(['Approximate Fixed Point for Problem 5 after 1000 Iterations: r = ', num2str(approx_fixed_point, '%.6f')]);

% f'(x) = -2sin(x)cos(x)
abs_derivative = abs(-2 * sin(approx_fixed_point) * cos(approx_fixed_point));
disp(['Since |g''(r)| for fixed point r is ', num2str(abs_derivative, '%.6f'), ' < 1, ' ...
    'FPI will locally converge at fixed point r']);

fprintf('\n');

% Section 1.4: Newton's Method
disp("Section 1.4 Computer Problems:");
fprintf('\n');

% Problem 1: Use Newton's Method to approximate the root
% to eight correct decimal places.

% (a) x^3 = 2x + 2
% x^3 - 2x - 2 = 0
% f(x) = x^3 - 2x - 2, f'(x) = 3x^2 - 2
f = @(x) x.^3 - (2 * x) - 2;
df = @(x) (3 * x.^2) - 2;
x0 = 1;
k = 1000;
approx_solution = newton(f, df, x0, k);
disp(['Approximate Solution for Problem 1, Part A: ', num2str(approx_solution, '%.8f')]);

% (b) e^x + x = 7
% e^x + x - 7 = 0
% f(x) = e^x + x - 7, f'(x) = e^x + 1
f = @(x) exp(x) + x - 7;
df = @(x) exp(x) + 1;
x0 = 1;
k = 1000;
approx_solution = newton(f, df, x0, k);
disp(['Approximate Solution for Problem 1, Part B: ', num2str(approx_solution, '%.8f')]);

% (c) e^x + sin(x) = 4
% e^x + sin(x) - 4 = 0
% f(x) = e^x + sin(x) - 4, f'(x) = e^x + cos(x)
f = @(x) exp(x) + sin(x) - 4;
df = @(x) exp(x) + cos(x);
x0 = 1;
k = 1000;
approx_solution = newton(f, df, x0, k);
disp(['Approximate Solution for Problem 1, Part C: ', num2str(approx_solution, '%.8f')]);
fprintf('\n');

% Problem 3: Apply Newton's Method to find the only root
% to as much accuracy as possible, and find the root's multiplicity.
% Report the forward and backward errors of the best approximation
% obtained from each method.

% (a) f(x) = 27x^3 + 54x^2 + 36x + 8
% f'(x) = 81x^2 + 108x + 36
f = @(x) (27 * x.^3) + (54 * x.^2) + (36 * x) + 8;
df = @(x) (81 * x.^2) + (108 * x) + 36;
x0 = 1;
k = 1000;
approx_solution = newton(f, df, x0, k);
disp('f(x) = 27x^3 + 54x^2 + 36x + 8');
disp(['Approximate Solution (Root) for Problem 3, Part A: ', num2str(approx_solution, '%.8f')]);

disp(['First Derivative of f(x) at Approximate Root: ', num2str(df(approx_solution), '%.8f')]);

% f''(x) = 162x + 108
d2f = @(x) (162 * x) + 108;

disp(['Second Derivative of f(x) at Approximate Root: ', num2str(d2f(approx_solution), '%.8f')]);

% f'''(x) = 162
disp('Third Derivative of f(x) at Approximate Root: 162.00000000');
disp("Multiplicity of f(x) at Approximate Root: m = 3");
disp("Error Rate at Approximate Root: S = 2/3");
disp("|e_{i+1}| ~= 2/3|e_{i}|");
fprintf('\n');

% (b) f(x) = 36x^4 - 12x^3 + 37x^2 - 12x + 1
% f'(x) = 144x^3 - 36x^2 + 74x - 12
f = @(x) (36 * x.^4) - (12 * x.^3) + (37 * x.^2) - (12 * x) + 1;
df = @(x) (144 * x.^3) - (36 * x.^2) + (74 * x) - 12;
x0 = 1;
k = 1000;
approx_solution = newton(f, df, x0, k);
disp('f(x) = 36x^4 - 12x^3 + 37x^2 - 12x + 1');
disp(['Approximate Solution (Root) for Problem 3, Part B: ', num2str(approx_solution, '%.8f')]);

disp(['First Derivative of f(x) at Approximate Root: ', num2str(df(approx_solution), '%.8f')]);

% f''(x) = 432x^2 - 72x + 74
d2f = @(x) (432 * x.^2) - (72 * x) + 74;

disp(['Second Derivative of f(x) at Approximate Root: ', num2str(d2f(approx_solution), '%.8f')]);
disp("Multiplicity of f(x) at Approximate Root: m = 2");
disp("Error Rate at Approximate Root: S = 1/2");
disp("|e_{i+1}| ~= 1/2|e_{i}|");
