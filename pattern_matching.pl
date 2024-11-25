% Facts: Defining some sample facts
color(red).
color(blue).
color(green).
color(yellow).

% Facts for animals
animal(dog).
animal(cat).
animal(bird).
animal(fish).

% Defining a simple family relationship
parent(john, mary).
parent(john, paul).
parent(mary, linda).
parent(paul, james).

% Pattern matching queries for animals and colors
match_color :-         % Use _ to indicate we don't need to use the variable
    color(X),             % This will unify X with a color in the facts
    write('The color is: '), write(X), nl.

match_animal :-        % Use _ to indicate we don't need to use the variable
    animal(X),            % This will unify X with an animal in the facts
    write('The animal is: '), write(X), nl.

% Check parent relationship (Pattern matching with facts)
check_parent(Parent, Child) :-
    parent(Parent, Child),
    write(Parent), write(' is the parent of '), write(Child), nl.

% A query that shows what Prolog does when matching patterns with variables.
pattern_matching_demo :-
    match_color,   % This will print out all colors by matching
    fail.             % This forces Prolog to backtrack and check for more solutions

% Matching family relationships and displaying them
family_demo :-
    check_parent(john, X),  % This will find all children of john
    fail.                   % Forces backtracking to find all solutions

% Try matching animals with variables
animal_demo :-
    match_animal,    % This will print all animals defined in the facts
    fail.               % Forces backtracking to find all solutions
