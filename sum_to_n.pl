% Base case: The sum of integers from 1 to 0 is 0
sum_to_n(0, 0).

% Recursive case: Sum of integers from 1 to N is N + sum of integers from 1 to N-1
sum_to_n(N, Sum) :-
    N > 0,
    N1 is N - 1,
    sum_to_n(N1, Sum1),
    Sum is Sum1 + N.