:- use_module(library(statistics)).

% Função principal para resolver a Torre de Hanoi
hanoi :-
    write('Digite o numero de discos: '),
    read(N),
    get_time(StartTime),  % Marca o tempo de início
    hanoi(N, 'Origem', 'Destino', 'Auxiliar'),
    get_time(EndTime),   % Marca o tempo de término
    ElapsedTime is (EndTime - StartTime) * 1000,  % Calcula o tempo em milissegundos
    ElapsedTimeSecs is ElapsedTime / 1000,        % Converte para segundos
    format('\nTempo de execucao: ~2f ms ou ~2f segundos~n', [ElapsedTime, ElapsedTimeSecs]).

% Predicado recursivo para mover os discos
hanoi(1, Origem, Destino, _) :-
    format('Mover disco de ~w para ~w~n', [Origem, Destino]).
hanoi(N, Origem, Destino, Auxiliar) :-
    N > 1,
    M is N - 1,
    hanoi(M, Origem, Auxiliar, Destino),  % Move N-1 discos da origem para o auxiliar
    format('Mover disco de ~w para ~w~n', [Origem, Destino]),  % Move o disco maior
    hanoi(M, Auxiliar, Destino, Origem).  % Move N-1 discos do auxiliar para o destino.
