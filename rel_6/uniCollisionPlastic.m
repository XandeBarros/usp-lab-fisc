format long

%% Constants

car2Mass = 195.93; % g
car2Length = 12; % cm

car1Mass = 195.87; %g
car1Length = 12; % cm

carConjMass = 391.80; %g
carConjLength = 12;

lengthError = 0.1; % cm

%% Experiment 2 - Plastic Collision 

% First Collision

t1Car1 = 0.136418; %s
t2CarConj = 0.286859; %s

veli1Car1 = (car1Length / 100) / (t1Car1);
veli1Car2 = 0;
velf1CarConj = (carConjLength / 100) / (t2CarConj);

p1Ini = (car1Mass / 1000) * veli1Car1 + (car2Mass / 1000) * veli1Car2;
p1Fin = ((car1Mass / 1000) + (car2Mass / 1000)) * velf1CarConj;

delta1P = 100 * (abs(p1Fin - p1Ini) / p1Ini);

imp1Car1 = -velf1CarConj * (car1Mass / 1000) + veli1Car1 * (car1Mass / 1000); % dúvida
imp1Car2 = -velf1CarConj * (car2Mass / 1000) + veli1Car2 * (car2Mass / 1000); % dúvida

e1 = (velf1CarConj - velf1CarConj) / (veli1Car2 - veli1Car1);

Ki1 = ((car2Mass / 1000) * veli1Car1 ^ 2) / 2;
Kf1 = ((carConjMass / 1000) * velf1CarConj ^ 2) / 2;

fMed1Car1 = imp1Car1 * (10 ^ 3);
fMed1Car2 = imp1Car2 * (10 ^ 3);

% Second Collision

t1Car1 = 0.135392; %s
t2CarConj = 0.288863; %s

veli2Car1 = (car1Length / 100) / (t1Car1);
veli2Car2 = 0;
velf2CarConj = (carConjLength / 100) / (t2CarConj);

p2Ini = (car1Mass / 1000) * veli2Car1 + (car2Mass / 1000) * veli2Car2;
p2Fin = ((car1Mass / 1000) + (car2Mass / 1000)) * velf2CarConj;

delta2P = 100 * (abs(p2Fin - p2Ini) / p2Ini);

imp2Car1 = -velf2CarConj * (car1Mass / 1000) + veli2Car1 * (car1Mass / 1000); % dúvida
imp2Car2 = -velf2CarConj * (car2Mass / 1000) + veli2Car2 * (car2Mass / 1000); % dúvida

e2 = (velf2CarConj - velf2CarConj) / (veli2Car2 - veli2Car1);

Ki2 = ((car2Mass / 1000) * veli2Car1 ^ 2) / 2;
Kf2 = ((carConjMass / 1000) * velf2CarConj ^ 2) / 2;

fMed2Car1 = imp2Car1 * (10 ^ 3);
fMed2Car2 = imp2Car2 * (10 ^ 3);

% Third Collision

t1Car1 = 0.113016; %s
t2CarConj = 0.239748; %s

veli3Car1 = (car1Length / 100) / (t1Car1);
veli3Car2 = 0;
velf3CarConj = (carConjLength / 100) / (t2CarConj);

p3Ini = (car1Mass / 1000) * veli3Car1 + (car2Mass / 1000) * veli3Car2;
p3Fin = ((car1Mass / 1000) + (car2Mass / 1000)) * velf3CarConj;

delta3P = 100 * (abs(p3Fin - p3Ini) / p3Ini);

imp3Car1 = -velf3CarConj * (car1Mass / 1000) + veli3Car1 * (car1Mass / 1000); % dúvida
imp3Car2 = -velf3CarConj * (car2Mass / 1000) + veli3Car2 * (car2Mass / 1000); % dúvida

e3 = (velf3CarConj - velf3CarConj) / (veli3Car2 - veli3Car1);

Ki3 = ((car2Mass / 1000) * veli3Car1 ^ 2) / 2;
Kf3 = ((carConjMass / 1000) * velf3CarConj ^ 2) / 2;

fMed3Car1 = imp3Car1 * (10 ^ 3);
fMed3Car2 = imp3Car2 * (10 ^ 3);
