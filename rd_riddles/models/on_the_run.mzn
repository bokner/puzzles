% John - 1, Stella - 2 , Isla - 3, Kona - 4

% Age from youngest to oldest
array[1..4] of var 1..4: age;

% Start
array[1..4] of var 1..4: start;

% Finish
array[1..4] of var 1..4: finish;

include "alldifferent.mzn";

%% Assumption: all kids have different age.
constraint alldifferent(age);
%% Assumption: all start and finish times are different.
constraint alldifferent(finish);
constraint alldifferent(start);

% John is the oldest 
constraint age[1] = 4;

% Neither oldest nor youngest won
constraint finish[age[1]] != 1;
 
constraint finish[age[4]] != 1;

%% ...even though they started first
constraint start[age[1]] <= 2;

constraint start[age[4]] <= 2;

% % Kona is youngest
constraint age[4] = 1;
% % Kona did not win...    
constraint finish[4] != 1;
% % ...and he started and finished in the same place

constraint start[4] = finish[4];        

%% Stella finished last
constraint finish[2] = 4;

%% Isla started last
constraint start[3] = 4;

%% John started first
constraint start[1] = 1;

% % Stella is older than Isla

constraint age[2] > age[3];


