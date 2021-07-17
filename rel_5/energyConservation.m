%% Constants
gravity = 9.81; % m/s^2
m = 119.69 / 1000; % Kg
deltaM = 0.01 / 1000; % Kg
Htotal = 3.010; % m
deltaHBloco = 0.001; % m
K = 0.767; % N/m
deltaK = 0.002; % N/m
Li = 30.40 / 100; % m
deltaDef = 0.007; %m, Como L - L0 é uma subtração a incertaza da deformação é dada pela soma das incertezas
% de L e Lo que valem 0.002 (resultado da subtração de Ltotal - 1.865 logo soma-se as incertezas também) e 
% 0.005 calculada pelos mínimos quadrados.

%% Energy Conversation Principle

% Part 1

L1 = Htotal - 0.08; % 0.002


energyPart1 = (m * gravity * 0.04) + ((K * ((L1 - Li)^ 2)) / 2);
deltaEnergyPart1 = (gravity * 0.04 * deltaM) + (m * gravity * deltaHBloco) + (((L1-Li)^2 / 2) * deltaK) + (K * (L1 - Li) * deltaDef);

% Part 2

L2 = 1.865;
H2 = Htotal - L2 - 0.04;

deltaH2 = 0.003; 
deltaDef = 0.006;

t = [0.030394, 0.030727, 0.030580, 0.030545, 0.030571];
incT = std(t);
t = mean(t);

v = 0.080 / t;
deltaV = (((deltaHBloco * t) + (incT) * 0.08) / (t^2));

energyPart2 = (m * gravity * H2) + ((K * ((L2 - Li) ^ 2)) / 2) + ((m * (v ^ 2)) / 2);
deltaEnergyPart2 = (gravity * H2 * deltaM) + (m * gravity * deltaH2) + (((L2-Li)^2 / 2) * deltaK) + (K * (L2 - Li) * deltaDef) + ((v^2 / 2) * deltaM) + (m * v * deltaV);

%% Change Referencial

Ha = 3.010 - 1.865 - 0.040;
deltaHa = 0.001 * 3;

L0 = 1.560;
La = -1.065;
deltaDef = 0.009;

energy1RefL = (m * gravity * (-1) * Ha) + (K * (La - L0)^2 / 2);
deltaEnergy1RefL = (gravity * Ha * deltaM) + (m * gravity * deltaHa) + (((La-L0)^2 / 2) * deltaK) + (K * ((-1) * (La - L0)) * deltaDef);

Hb = -0.040;
deltaHb = 0.001;
Lb = 0;
deltaDef = 0.007;

energy2RefL = (m * gravity * Hb) + (K * (Lb - L0)^2 / 2) + (m * v^2 / 2);
deltaEnergy2RefL = (gravity * Hb * deltaM) + (m * gravity * deltaHb) + (((Lb-L0)^2 / 2) * deltaK) + (K * (L2 - Li) * deltaDef) + ((v^2 / 2) * deltaM) + (m * v * deltaV);
