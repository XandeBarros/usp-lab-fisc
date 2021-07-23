format long

%% Constants

car2Mass = 195.93; % g
car2Length = 12; % cm

car1Mass = 195.87; %g
car1Length = 12; % cm

lengthError = 0.1; % cm

%% Experiment 1 - Elastic Collision 

% First Collision

t1Car2 = 0.121658; %s
t2Car1 = 0.124288; %s

veli1Car2 = (car2Length / 100) / (t1Car2);
veli1Car1 = 0;
velf1Car1 = (car1Length / 100) / (t2Car1);
velf1Car2 = 0;

p1Ini = (car1Mass / 1000) * veli1Car1 + (car2Mass / 1000) * veli1Car2;
p1Fin = (car1Mass / 1000) * velf1Car1 + (car2Mass / 1000) * velf1Car2;

delta1P = 100 * (abs(p1Fin - p1Ini) / p1Ini);

imp1Car1 = velf1Car1 * (car1Mass / 1000) - veli1Car1 * (car1Mass / 1000); 
imp1Car2 = -velf1Car2 * (car2Mass / 1000) + veli1Car2 * (car2Mass / 1000); 

e1 = (velf1Car2 - velf1Car1) / (veli1Car2 - veli1Car1);

Ki1 = ((car2Mass / 1000) * veli1Car2 ^ 2) / 2;
Kf1 = ((car2Mass / 1000) * velf1Car2 ^ 2) / 2 + ((car1Mass / 1000) * velf1Car1 ^ 2) / 2;

fMed1Car1 = imp1Car1 * (10 ^ 3);
fMed1Car2 = imp1Car2 * (10 ^ 3);

v1CmIni = (car1Mass * veli1Car1 + car2Mass * veli1Car2) / (car1Mass + car2Mass);
v1CmFin = (car1Mass * velf1Car1 + car2Mass * velf1Car2) / (car1Mass + car2Mass);

% l)

veliRel1Car1 = veli1Car1 - v1CmIni;
veliRel1Car2 = veli1Car2 - v1CmIni;

velfRel1Car1 = velf1Car1 - v1CmFin;
velfRel1Car2 = velf1Car2 - v1CmFin;

pRel1Ini = ((car1Mass / 1000) * veliRel1Car1) - ((car2Mass / 1000) * veliRel1Car2);
pRel1Fin = ((car1Mass / 1000) * (-1) * velfRel1Car1) + ((car2Mass / 1000) * velfRel1Car2);

delta1Prel = 100 * (abs(pRel1Fin - pRel1Ini) / pRel1Ini);

impRel1Car1 = velfRel1Car1 * (car1Mass / 1000) - veliRel1Car1 * (car1Mass / 1000); 
impRel1Car2 = -velfRel1Car2 * (car2Mass / 1000) + veliRel1Car2 * (car2Mass / 1000);

eRel1 = (velfRel1Car2 - velfRel1Car1) / (veliRel1Car2 - veliRel1Car1);

KiRel1 = ((car2Mass / 1000) * veliRel1Car2 ^ 2) / 2 + ((car2Mass / 1000) * veliRel1Car1 ^ 2) / 2;
KfRel1 = ((car2Mass / 1000) * velfRel1Car2 ^ 2) / 2 + ((car1Mass / 1000) * velfRel1Car1 ^ 2) / 2;

% Second Collision

t1Car2 = 0.109302; %s
t2Car1 = 0.111647; %s

veli2Car2 = (car2Length / 100) / (t1Car2);
veli2Car1 = 0;
velf2Car1 = (car1Length / 100) / (t2Car1);
velf2Car2 = 0;

p2Ini = (car1Mass / 1000) * veli2Car1 + (car2Mass / 1000) * veli2Car2;
p2Fin = (car1Mass / 1000) * velf2Car1 + (car2Mass / 1000) * velf2Car2;

delta2P = 100 * (abs(p2Fin - p2Ini) / p2Ini);

imp2Car1 = velf2Car1 * (car1Mass / 1000) - veli2Car1 * (car1Mass / 1000); 
imp2Car2 = -velf2Car2 * (car2Mass / 1000) + veli2Car2 * (car2Mass / 1000); 

e2 = (velf2Car2 - velf2Car1) / (veli2Car2 - veli2Car1);

Ki2 = ((car2Mass / 1000) * veli2Car2 ^ 2) / 2;
Kf2 = ((car2Mass / 1000) * velf2Car2 ^ 2) / 2 + ((car1Mass / 1000) * velf2Car1 ^ 2) / 2; 

fMed2Car1 = imp2Car1 * (10 ^ 3);
fMed2Car2 = imp2Car2 * (10 ^ 3);

v2CmIni = (car1Mass * veli2Car1 + car2Mass * veli2Car2) / (car1Mass + car2Mass);
v2CmFin = (car1Mass * velf2Car1 + car2Mass * velf2Car2) / (car1Mass + car2Mass);

% l)

veliRel2Car1 = veli2Car1 - v2CmIni;
veliRel2Car2 = veli2Car2 - v2CmIni;

velfRel2Car1 = velf2Car1 - v2CmFin;
velfRel2Car2 = velf2Car2 - v2CmFin;

pRel2Ini = ((car1Mass / 1000) * veliRel2Car1) - ((car2Mass / 1000) * veliRel2Car2);
pRel2Fin = ((car1Mass / 1000) * (-1) * velfRel2Car1) + ((car2Mass / 1000) * velfRel2Car2);

delta2Prel = 100 * (abs(pRel2Fin - pRel2Ini) / pRel2Ini);

impRel2Car1 = velfRel2Car1 * (car1Mass / 1000) - veliRel2Car1 * (car1Mass / 1000); 
impRel2Car2 = -velfRel2Car2 * (car2Mass / 1000) + veliRel2Car2 * (car2Mass / 1000);

eRel2 = (velfRel2Car2 - velfRel2Car1) / (veliRel2Car2 - veliRel2Car1);

KiRel2 = ((car2Mass / 1000) * veliRel2Car2 ^ 2) / 2 + ((car2Mass / 1000) * veliRel2Car1 ^ 2) / 2;
KfRel2 = ((car2Mass / 1000) * velfRel2Car2 ^ 2) / 2 + ((car1Mass / 1000) * velfRel2Car1 ^ 2) / 2;

% Third Collision

t1Car2 = 0.134920; %s
t2Car1 = 0.137729; %s

veli3Car2 = (car2Length / 100) / (t1Car2);
veli3Car1 = 0;
velf3Car1 = (car1Length / 100) / (t2Car1);
velf3Car2 = 0;

p3Ini = (car1Mass / 1000) * veli3Car1 + (car2Mass / 1000) * veli3Car2;
p3Fin = (car1Mass / 1000) * velf3Car1 + (car2Mass / 1000) * velf3Car2;

delta3P = 100 * (abs(p3Fin - p3Ini) / p3Ini);

imp3Car1 = velf3Car1 * (car1Mass / 1000) - veli3Car1 * (car1Mass / 1000); 
imp3Car2 = -velf3Car2 * (car2Mass / 1000) + veli3Car2 * (car2Mass / 1000); 

fMed3Car1 = imp3Car1 * (10 ^ 3);
fMed3Car2 = imp3Car2 * (10 ^ 3);

e3 = (velf3Car2 - velf3Car1) / (veli3Car2 - veli3Car1);

Ki3 = ((car2Mass / 1000) * veli3Car2 ^ 2) / 2;
Kf3 = ((car2Mass / 1000) * velf3Car2 ^ 2) / 2 + ((car1Mass / 1000) * velf3Car1 ^ 2) / 2; 

v3CmIni = (car1Mass * veli3Car1 + car2Mass * veli3Car2) / (car1Mass + car2Mass);
v3CmFin = (car1Mass * velf3Car1 + car2Mass * velf3Car2) / (car1Mass + car2Mass);

% l)

veliRel3Car1 = veli3Car1 - v3CmIni;
veliRel3Car2 = veli3Car2 - v3CmIni;

velfRel3Car1 = velf3Car1 - v3CmFin;
velfRel3Car2 = velf3Car2 - v3CmFin;

pRel3Ini = ((car1Mass / 1000) * veliRel3Car1) - ((car2Mass / 1000) * veliRel3Car2);
pRel3Fin = ((car1Mass / 1000) * (-1) * velfRel3Car1) + ((car2Mass / 1000) * velfRel3Car2);

delta3Prel = 100 * (abs(pRel3Fin - pRel3Ini) / pRel3Ini);

impRel3Car1 = velfRel3Car1 * (car1Mass / 1000) - veliRel3Car1 * (car1Mass / 1000); 
impRel3Car2 = -velfRel3Car2 * (car2Mass / 1000) + veliRel3Car2 * (car2Mass / 1000);

eRel3 = (velfRel3Car2 - velfRel3Car1) / (veliRel3Car2 - veliRel3Car1);

KiRel3 = ((car2Mass / 1000) * veliRel3Car2 ^ 2) / 2 + ((car2Mass / 1000) * veliRel3Car1 ^ 2) / 2;
KfRel3 = ((car2Mass / 1000) * velfRel3Car2 ^ 2) / 2 + ((car1Mass / 1000) * velfRel3Car1 ^ 2) / 2;
