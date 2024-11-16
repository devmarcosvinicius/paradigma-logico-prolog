:- use_module(library(statistics)).

% Função principal para resolver a Torre de Hanoi
hanoi :-
    write('Digite o numero de discos: '),
    read(N),
    get_time(StartTime),
    hanoi(N, 'Origem', 'Destino', 'Auxiliar'),
    get_time(EndTime),
    ElapsedTime is (EndTime - StartTime) * 1000,
    ElapsedTimeSecs is ElapsedTime / 1000,
    format('\nTempo de execucao: ~2f ms ou ~2f segundos~n', [ElapsedTime, ElapsedTimeSecs]).

% Predicado recursivo para mover os discos
hanoi(1, Origem, Destino, _) :-
    format('Mover disco de ~w para ~w~n', [Origem, Destino]).
hanoi(N, Origem, Destino, Auxiliar) :-
    N > 1,
    M is N - 1,
    hanoi(M, Origem, Auxiliar, Destino),
    format('Mover disco de ~w para ~w~n', [Origem, Destino]),
    hanoi(M, Auxiliar, Destino, Origem).
