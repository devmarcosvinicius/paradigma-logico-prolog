import time

# Função principal para resolver a Torre de Hanoi
def hanoi_main():
    N = int(input("Digite o número de discos: "))
    start_time = time.time()
    hanoi(N, 'Origem', 'Destino', 'Auxiliar')
    end_time = time.time()
    elapsed_time_seconds = end_time - start_time
    elapsed_time_ms = elapsed_time_seconds * 1000
    print(f'\nTempo de execução: {elapsed_time_ms:.4f} ms ou {elapsed_time_seconds:.4f} segundos')

# Função recursiva para mover os discos
def hanoi(N, origem, destino, auxiliar):
    if N == 1:
        print(f'Mover disco de {origem} para {destino}')
    else:
        hanoi(N - 1, origem, auxiliar, destino)
        print(f'Mover disco de {origem} para {destino}')
        hanoi(N - 1, auxiliar, destino, origem)

# Chama a função principal
if __name__ == "__main__":
    hanoi_main()
