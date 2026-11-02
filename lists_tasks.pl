
deleteElement(_, [], []).

% If match
deleteElement(X, [X | Tail], Result) :-
    deleteElement(X, Tail, Result).

% If not match
deleteElement(X, [Y | Tail], [Y | Result]) :-
    X \= Y,
    deleteElement(X, Tail, Result).


% ===============
% Base case: adding X to an empty list produces a list with just X.
add_at_the_end(X, [], [X]).

% Recursively traverse down to the end of the list, then rebuild with X at the end.
add_at_the_end(X, [Head | Tail], [Head | Result]) :-
    add_at_the_end(X, Tail, Result).