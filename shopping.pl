

% Start  with a basket of five items
start :-
    Basket = [coffee, milk, chocolate, apple, juice],
    menu(Basket).

% Menu display
menu(Basket) :-
    nl,
    write('--- SHOPPING LIST ---'), nl,
    write('d. Display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. Exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    handle_choice(Choice, Basket).

% Option d
handle_choice(d, Basket) :-
    nl, write('Items in your basket:'), nl,
    display_list(Basket),
    menu(Basket).

% Option a
handle_choice(a, Basket) :-
    write('Enter the item you want to add: '),
    read(Item),
    add_item(Item, Basket, NewBasket),
    write('The item has been added.'), nl,
    menu(NewBasket).

% Option e
handle_choice(e, _) :-
    write('Exiting program. Goodbye!'), nl.


display_list([]).
display_list([Head | Tail]) :-
    write(' - '), write(Head), nl,
    display_list(Tail).

add_item(Item, List, [Item | List]).
