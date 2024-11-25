% Prolog Database for Name and Date of Registration (DOR)

% Facts: name(Name, DateOfRegistration)
name('Alice', '2024-01-15').
name('Bob', '2024-02-10').
name('Charlie', '2024-03-05').
name('Diana', '2024-04-20').
name('Eve', '2024-05-15').

% Rule to find all people registered on a specific date
registered_on(Date, Name) :- 
    name(Name, Date).

% Rule to check if someone is in the database
is_registered(Name) :- 
    name(Name, _).

% Rule to find the registration date for a given person
find_date(Name, Date) :-
    name(Name, Date).

% Rule to list all registered names
all_registered(Names) :-
    findall(Name, name(Name, _), Names).
