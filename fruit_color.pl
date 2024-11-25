% Facts defining fruits and their colors
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grapes, purple).
fruit_color(orange, orange).
fruit_color(kiwi, brown).
fruit_color(pear, green).

% A rule to find the color of a given fruit
find_color(Fruit, Color) :-
    fruit_color(Fruit, Color).
