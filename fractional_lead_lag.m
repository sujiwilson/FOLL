%% FOLL controller
num = [1 0.5];
den = [1 1 0.5];
G = tf(num, den);

% Desired Closed-Loop Transfer Function
num_d = [1 0.1];
den_d = [1 1];
Gd = tf(num_d, den_d);

% optimizaed Fractional Lead-Lag Controller Parameters
alpha = 0.5;
beta = 0.1;
T1 = 0.1;
T2 = 0.01;

% Fractional Lead-Lag Controller Transfer Function
num_c = [T1*T2 1 T1/T2];
den_c = [alpha*T1*T2 beta*T1+T1+T2 T1/T2];
C = tf(num_c, den_c);
