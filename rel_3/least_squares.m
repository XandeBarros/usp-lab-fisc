%% Constants
pi = 3.14159265359;

base = 382.2;
error_base = 0.1;
height = 7.7;
error_height = 0.1;

sen_exp2 = height / base;
error_sen_exp2 = ((base * error_height) + (height * error_base)) / (base ^ 2);

%% Variables for Exp1
dataExp1 = importDataTwoColumn("E:\Programação\USP\relatorios\fisc_rel_2\rel_3\rel3.xlsx", "pendulum", "A2:B12");

L = dataExp1.x;
Lplot = L ./ 10;
t10 = dataExp1.y;
T = t10 ./ 10;
Tpow = T .^ 2;

x = Lplot;
y = Tpow;

%% Least Squares For Exp1

results_exp1 = regLeastSquares(x, y, 'Gráfico 1 - Período ao quadrado (T^2) por comprimento (L)', 'L (dm)', 'T^2 (s^2)');

a_exp1 = results_exp1.a;
deltaA_exp1 = results_exp1.deltaA;

gravity_exp1 = (4 * (pi ^ 2)) / (a_exp1);
error_gravity_exp1 = (4 * (pi ^ 2) * deltaA_exp1) / (a_exp1 ^ 2);

%% Variables for Exp2
dataExp2 = importDataTwoColumn("E:\Programação\USP\relatorios\fisc_rel_2\rel_3\rel3.xlsx", "inclined_plane", "A2:B48");

time = dataExp2.x;
position = dataExp2.y;

positionCm = 100 * position; %% For a better visualization in graph for the exp2 it will be ploted in (cm/s)x(s)
 
velocity = positionCm ./ time;

lengthVectors = length(time);

x = time;
y = velocity;

%% Least Squares For Exp2

results_exp2 = regLeastSquares(x, y, 'Gráfico 2 - Velocidade pelo Tempo', 'Tempo (s)', 'Velocidade (cm/s)');

a_exp2 = results_exp2.a;
deltaA_exp2 = results_exp2.deltaA;

gravity_exp2 = (2 * a_exp2) / (sen_exp2);
error_gravity_exp2 = ((2 * a_exp2 * error_sen_exp2) + (sen_exp2 * 2 * deltaA_exp2)) / (sen_exp2 ^ 2);
