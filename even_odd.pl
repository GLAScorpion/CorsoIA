positive(X) :- X>0.
negative(X) :- X<0.
even(X) :- X=0;positive(X),Z is X - 1, odd(Z).
even(X):- negative(X),Z is abs(X),even(Z).
odd(X) :- Z is X - 1, positive(X), even(Z).
odd(X):- negative(X), Z is abs(X),odd(Z).