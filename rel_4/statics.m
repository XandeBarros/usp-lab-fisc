format long

%% Constants
gravity = 9.81;
deltaTransf = degToRadian(1);

%% Reading Data for the Fisrt experiment
tblPoly = polySystem("poly_system");

m1 = tblPoly.m1 / 1000;
m2 = tblPoly.m2 / 1000;
deltaM2 = 0.01 / 1000;
m3 = tblPoly.m3 / 1000;
alpha = degToRadian(tblPoly.alpha);
deltaAlpha = cos(alpha) * deltaTransf;
gama = degToRadian(tblPoly.gama);
deltaGama = cos(gama) * deltaTransf;
beta = degToRadian(180 - (tblPoly.alpha + tblPoly.gama));
deltaBeta = cos(beta) * 2 * deltaTransf;

%% Calcs First experiment
tensionAC = m2 * gravity * (sin(gama)/sin(beta));
deltaTAC = (gravity * (sin(gama) / sin(beta)) * deltaM2) + (m2 * gravity * (cos(gama) / sin(beta)) * deltaGama) + (m2 * gravity * sin(gama) * cot(beta) * csc(beta) * deltaBeta);

m1Exp = tensionAC / gravity;
deltaM1Exp = deltaTAC / gravity;

tensionAB = m2 * gravity * (sin(alpha)/sin(beta));
deltaTAB = (gravity * (sin(alpha) / sin(beta)) * deltaM2) + (m2 * gravity * (cos(alpha) / sin(beta)) * deltaAlpha) + (m2 * gravity * sin(alpha) * cot(beta) * csc(beta) * deltaBeta);

m3Exp = tensionAB / gravity;
deltaM3Exp = deltaTAB / gravity;

clear tblPoly
%% Reading Data for the Second experiment
tblLengths = rupTension("tension");

L = tblLengths.L;
CB = tblLengths.CB;
L = transpose(L ./ 100);
CB = transpose(CB ./ 100);

vecLCB = L ./ CB; 

%% Calcs Second experiment
mSecExp = 56.75 / 1000;
esc = mSecExp * gravity;
breakingTension = esc * vecLCB;

avgTension = mean(breakingTension);

uncTension = uncertainty(breakingTension);

clear tblLengths
%% Reading Data for the Third experiment

tblAngs = angInclinedPlane("coefatr");

angForFor = degToRadian(tblAngs.angForFor);
angFelFor = degToRadian(tblAngs.angFelFor);

tanForFor = tan(angForFor);
tanFelFor = tan(angFelFor);

%% Calcs Third experiment

% Fórmica - Fórmica
avgCoefAtrForFor = mean(tanForFor);
uncCoefAtrForFor = uncertainty(tanForFor);

% Feltro - Fórmica
avgCoefAtrFelFor = mean(tanFelFor);
uncCoefAtrFelFor = uncertainty(tanFelFor);

clear tblAngs
