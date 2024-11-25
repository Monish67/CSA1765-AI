% Defining the graph as facts. Each edge has a cost associated with it.
edge(a, b, 1).
edge(a, c, 3).
edge(b, d, 1).
edge(c, d, 2).
edge(d, e, 1).
edge(c, e, 5).

% Heuristic function: This is a simple example. Heuristic values can vary.
heuristic(a, 4).
heuristic(b, 2).
heuristic(c, 3).
heuristic(d, 1).
heuristic(e, 0).

% Best-first search algorithm
best_first_search(Start, Goal, Path) :-
    best_first_search([Start], Goal, [], Path).

best_first_search([Goal|Rest], Goal, Path, Path) :-
    reverse([Goal|Rest], Path). % Goal reached, return the path

best_first_search([Current|Rest], Goal, Visited, Path) :-
    findall(Next, (edge(Current, Next, _), \+ member(Next, Visited)), Neighbors),
    sort_nodes(Neighbors, SortedNeighbors),
    best_first_search(SortedNeighbors, Goal, [Current|Visited], Path).

% Sorting nodes based on heuristic values (lowest heuristic first)
sort_nodes(Neighbors, Sorted) :-
    findall(H, (member(N, Neighbors), heuristic(N, H)), Heuristics),
    pairs_keys_values(Pairs, Neighbors, Heuristics),
    keysort(Pairs, SortedPairs),
    pairs_keys(SortedPairs, Sorted).

% Query to start the search
start_search :-
    best_first_search(a, e, Path),
    write('Path: '), write(Path), nl.
