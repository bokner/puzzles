% John, Stella, Isla, Kona
%array[1..4] of 1..4:  runners = {;

array[1..4] of var 1..4: age_order;

array[1..4] of var 1..4: start_order;

array[1..4] of var 1..4: finish_order;

include "alldifferent.mzn";

constraint alldifferent(age_order);
constraint alldifferent(start_order);
constraint alldifferent(finish_order);

constraint age_order[1] = 4;

constraint finish_order[age_order[1]] != 1;
 
constraint finish_order[age_order[4]] != 1;

constraint start_order[age_order[1]] > 2;

constraint start_order[age_order[4]] > 2;
 
   
constraint finish_order[age_order[4]] != 1;



%constraint start_order[1] > start_order[
  
constraint finish_order[2] = 4;

constraint start_order[3] = 4;

constraint start_order[1] = 1;

constraint age_order[2] > age_order[3];

constraint start_order[4] = finish_order[4];        