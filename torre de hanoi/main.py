import time

# Função principal para resolver a Torre de Hanoi
def hanoi_main():
    N = int(input("Digite o número de discos: "))
    tempo_inicial = time.time()
    hanoi(N, 'Origem', 'Destino', 'Auxiliar')
    tempo_final = time.time()
    tempo_em_segundos = tempo_final - tempo_inicial
    tempo_em_ms = tempo_em_segundos * 1000
    print(f'\nTempo de execução: {tempo_em_ms:.4f} ms ou {tempo_em_segundos:.4f} segundos')

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
