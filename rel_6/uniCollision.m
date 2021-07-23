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
velf1Car2 = sqrt(((car2Mass * veli1Car2 ^ 2) - (car1Mass * velf1Car1 ^ 2)) / (car2Mass));

p1Ini = (car1Mass / 1000) * veli1Car1 + (car2Mass / 1000) * veli1Car2;
p1Fin = (car1Mass / 1000) * velf1Car1 + (car2Mass / 1000) * velf1Car2;

imp1Car1 = velf1Car1 * (car1Mass / 1000) - veli1Car1 * (car1Mass / 1000); 
imp1Car2 = velf1Car2 * (car2Mass / 1000) - veli1Car2 * (car2Mass / 1000); 

e1 = (velf1Car2 - velf1Car1) / (veli1Car2 - veli1Car1);

Ki1 = ((car2Mass / 1000) * veli1Car2 ^ 2) / 2;
Kf1 = ((car2Mass / 1000) * velf1Car2 ^ 2) / 2 + ((car1Mass / 1000) * velf1Car1 ^ 2) / 2;

% Second Collision

t1Car2 = 0.109302; %s
t2Car1 = 0.111647; %s

veli2Car2 = (car2Length / 100) / (t1Car2);
veli2Car1 = 0;
velf2Car1 = (car1Length / 100) / (t2Car1);
velf2Car2 = sqrt(((car2Mass * veli2Car2 ^ 2) - (car1Mass * velf2Car1 ^ 2)) / (car2Mass));

p2Ini = (car1Mass / 1000) * veli2Car1 + (car2Mass / 1000) * veli2Car2;
p2Fin = (car1Mass / 1000) * velf2Car1 + (car2Mass / 1000) * velf2Car2;

imp2Car1 = velf2Car1 * (car1Mass / 1000) - veli2Car1 * (car1Mass / 1000); 
imp2Car2 = velf2Car2 * (car2Mass / 1000) - veli2Car2 * (car2Mass / 1000);

e2 = (velf2Car2 - velf2Car1) / (veli2Car2 - veli2Car1);

Ki2 = ((car2Mass / 1000) * veli2Car2 ^ 2) / 2;
Kf2 = ((car2Mass / 1000) * velf2Car2 ^ 2) / 2 + ((car1Mass / 1000) * velf2Car1 ^ 2) / 2; 

% Third Collision

t1Car2 = 0.134920; %s
t2Car1 = 0.137729; %s

veli3Car2 = (car2Length / 100) / (t1Car2);
veli3Car1 = 0;
velf3Car1 = (car1Length / 100) / (t2Car1);
velf3Car2 = sqrt(((car2Mass * veli3Car2 ^ 2) - (car1Mass * velf3Car1 ^ 2)) / (car2Mass));

p3Ini = (car1Mass / 1000) * veli3Car1 + (car2Mass / 1000) * veli3Car2;
p3Fin = (car1Mass / 1000) * velf3Car1 + (car2Mass / 1000) * velf3Car2;

imp3Car1 = velf3Car1 * (car1Mass / 1000) - veli3Car1 * (car1Mass / 1000); 
imp3Car2 = velf3Car2 * (car2Mass / 1000) - veli3Car2 * (car2Mass / 1000);

e3 = (velf3Car2 - velf3Car1) / (veli3Car2 - veli3Car1);

Ki3 = ((car2Mass / 1000) * veli3Car2 ^ 2) / 2;
Kf3 = ((car2Mass / 1000) * velf3Car2 ^ 2) / 2 + ((car1Mass / 1000) * velf3Car1 ^ 2) / 2; 
