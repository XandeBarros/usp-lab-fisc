%% Variables for Exp1
dataExp1 = importDataTwoColumn("E:\Programação\USP\relatorios\fisc_rel_2\rel_3\rel3.xlsx", "pendulum", "A2:B12");

L = dataExp1.x;
Lplot = L./10;
t10 = dataExp1.y;
T = t10./10;
Tpow = T.^2;

x = Lplot;
y = Tpow;

%% Least Squares For Exp1

regLeastSquares(x, y, 'Gráfico 1', 'L (dm)', 'T^2 (s^2)')

%% Variables for Exp2
dataExp2 = importDataTwoColumn("E:\Programação\USP\relatorios\fisc_rel_2\rel_3\rel3.xlsx", "inclined_plane", "A2:B48");

time = dataExp2.x;
position = dataExp2.y;

positionCm = 100*position; %% For a better visualization in graph for the exp2 it will be ploted in (cm/s)x(s)
 
velocity = positionCm./time;

lengthVectors = length(time);

x = time;
y = velocity;

%% Least Squares For Exp2

regLeastSquares(x, y, 'Gráfico 2', 'Tempo (s)', 'Velocidade (cm/s)')

