:- use_module(library(statistics)).

% Função principal para resolver a Torre de Hanoi
hanoi :-
    write('Digite o numero de discos: '),
    read(N),
    get_time(tempoInical),
    hanoi(N, 'Origem', 'Destino', 'Auxiliar'),
    get_time(tempoFinal),
    tempoEmMs is (tempoFinal - tempoInical) * 1000,
    tempoEmSegundos is tempoEmMs / 1000,
    format('\nTempo de execucao: ~2f ms ou ~2f segundos~n', [tempoEmMs, tempoEmSegundos]).

% Predicado recursivo para mover os discos
hanoi(1, Origem, Destino, _) :-
    format('Mover disco de ~w para ~w~n', [Origem, Destino]).
hanoi(N, Origem, Destino, Auxiliar) :-
    N > 1,
    M is N - 1,
    hanoi(M, Origem, Auxiliar, Destino),
    format('Mover disco de ~w para ~w~n', [Origem, Destino]),
    hanoi(M, Auxiliar, Destino, Origem).