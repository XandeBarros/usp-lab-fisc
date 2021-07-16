%% Constants
gravity = 9.81;

%% Data
tbl = kConstant();

L = transpose(tbl.L);
m = transpose(tbl.m);

clear tbl
%% Calculating K - Spring Constant

y = m .* gravity;
x = L;

tbl = regLeastSquares(x, y, "Gráfico 1 - Determinação da Constante K e L_0", "Comprimento, L (cm)", "Peso, P (mN)");