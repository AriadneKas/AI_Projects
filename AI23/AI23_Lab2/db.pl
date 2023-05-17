/* Genres */

commonGenre(X, Y, G) :- genre(X, G), genre(Y, G), X\=Y.

atLeastOneCommonGenre(X, Y) :- commonGenre(X, Y, G1).
 
atLeastTwoCommonGenres(X, Y) :- commonGenre(X, Y, G1), commonGenre(X, Y, G2), G1\=G2.

atLeastThreeCommonGenres(X, Y) :- commonGenre(X, Y, G1), commonGenre(X, Y, G2), commonGenre(X, Y, G3), G1\=G2, G1\=G3, G2\=G3.

atLeastFourCommonGenres(X, Y) :- commonGenre(X, Y, G1), commonGenre(X, Y, G2), commonGenre(X, Y, G3), commonGenre(X, Y, G4), G1 \= G2, G1 \= G3, G1 \= G4, G2 \= G3, G2 \= G4, G3 \= G4.


/* Keyword */

commonKeyword(X, Y, K) :- plot_keyword(X, K), plot_keyword(Y, K), Y\=Y.

atLeastOneCommonKeyword(X, Y) :- commonKeyword(X, Y, K1).

atLeastTwoCommonKeywords(X, Y) :- commonKeyword(X, Y, K1), commonKeyword(X, Y, K2), K1/=K2.

atLeastThreeCommonKeywords(X, Y) :- commonKeyword(X, Y, K1), commonKeyword(X, Y, K2), commonKeyword(X, Y, K3), K1/=K2, K1/=K3, K2/=K3

atLeastFourCommonKeywords(X, Y) :- commonKeyword(X, Y, K1), commonKeyword(X, Y, K2), commonKeyword(X, Y, K3), commonKeyword(X, Y, K4), K1 \= K2, K1 \= K3, K1 \= K4, K2 \= K3, K2 \= K4, K3 \= K4.


/* Actor */

commonActor(X, Y, A) :- actor(X, A), actor(Y, A), X \= Y.

atLeastOneCommonActor(X, Y) :- commonActor(X, Y, K1).

atLeastTwoCommonActors(X, Y) :- commonActor(X, Y, K1), commonActor(X, Y, K2), K1 \= K2.

threeCommonActors(X, Y) :- commonActor(X, Y, K2), commonActor(X, Y, K3), commonActor(X, Y, K1), K1 \= K2, K1 \= K3, K2 \= K3.


/* Director */

sameDirector(X, Y) :- director(X, D), director(Y, D), X\=Y.


/* Language */

sameLanguage(X, Y) :- language(X, D), language(Y, D), X \= Y.


/* Black & white */

blackAndWhite(X) :- plot_keyword(X, "black and white").


/* Production company */ 

commonProductionCompany(X, Y, C):- production_company(X, C), production_company(Y, C), X \= Y.

oneCommonCompany(X, Y):- commonProductionCompany(X, Y, C).

twoCommonCompanies(X, Y):- commonProductionCompany(X, Y, C1), commonProductionCompany(X, Y, C2), C1 \= C2.


/* Same country */

commonCountry(X, Y) :- country(X, C), country(Y, C), X \= Y.


/* Same decade */

sameDecade(X, Y) :- decade(X, D), decade(Y, D), X \= Y.
