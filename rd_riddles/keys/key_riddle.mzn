% Reader Digest keys puzzle.
%  
array[1..7] of int: keys = [1, 2, 4, 5, 6, 7, 9];

set of int: perfect_squares = {4*4, 5*5, 6*6, 7*7, 9*9};
set of int: perfect_cubes = {3*3*3, 4*4*4};

array[1..7] of var 1..7: key_positions;
array[1..7] of var 1..9: keys_to_locks;

include "alldifferent.mzn";

constraint alldifferent(key_positions);

constraint keys[key_positions[1]] * 10 + keys[key_positions[2]] in perfect_squares;
constraint keys[key_positions[3]] * 10 + keys[key_positions[4]] in perfect_cubes;
constraint ((keys[key_positions[5]] * 10 + keys[key_positions[6]]) mod 8) = 0; 

constraint keys[key_positions[7]] > 4;


constraint forall(i in 1..7)(
  keys[key_positions[i]] = keys_to_locks[i]  
);

 
