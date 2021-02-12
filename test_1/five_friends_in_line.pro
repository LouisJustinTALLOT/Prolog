/* 
There are 5 friends going to a movie (Chris, Joey, Andy, Kelsey, & Tina). How are they standing in line for a ticket?

Chris is in front of Andy.
Kelsey is behind Andy.
Tina is behind Joey.
Joey is in front of Chris.
Tina is in front of Andy.
Tina is behind Chris.
*/

is_in_front(chris, andy).
is_in_front(joey, chris).
is_in_front(tina, andy).

is_behind(kelsey, andy).
is_behind(tina, joey).
is_behind(tina, chris).

is_behind(X,Y) :- 
    % write('ici'), 
    % nl, 
    % % fail.
    is_in_front(X,Y), ! , fail.
    
    
is_in_front(X,Y) :- is_behind(X,Y), ! , fail.
