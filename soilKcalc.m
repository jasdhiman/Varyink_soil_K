J=[75,120,210]; % Julian day %
kc=[1.600
0.100
0.100
]; % Kc values for the given soil type %

f = @(x)             [1+x(1)*cos(((J(1)/x(2))-x(3))*(pi/6))-kc(1);
                      1+x(1)*cos(((J(2)/x(2))-x(3))*(pi/6))-kc(2);
                      1+x(1)*cos(((J(3)/x(2))-x(3))*(pi/6))-kc(3)] % defining the system of equations in the form of f(x) = 0 %
                      
[k_val, fval]=fsolve(f,[3 3 1]) % any value to check (starting point). here we chose 3, 3 and 1 for the 3 equations %

