/* Find Similars */

find_sim_1(X, Y) :- atLeastOneCommonGenre(X, Y).

find_sim_2(X, Y) :- atLeastOneCommonGenre(X, Y), sameDirector(X, Y).

find_sim_3(X, Y) :- atLeastOneCommonGenre(X, Y), oneCommonCompany(X, Y).

find_sim_4(X, Y) :- atLeastTwoCommonGenres(X, Y), oneCommonCompany(X, Y), sameLanguage(X, Y).

find_sim_5(X, Y) :- atLeastThreeCommonGenres(X, Y), oneCommonCompany(X, Y), sameLanguage(X, Y), sameDirector(X, Y).

