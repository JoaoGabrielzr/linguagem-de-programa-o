#include <stdio.h>
#include <string.h>


int potencia(int x, int n) {
    if (n == 0) return 1;        // Caso base: x^0 = 1
    return x * potencia(x, n - 1); // x^n = x * x^(n-1)
}


int fatorial(int n) {
    if (n <= 1) return 1;       // Caso base: 0! = 1! = 1
    return n * fatorial(n - 1); // n! = n * (n-1)!
}


void inverterString(char* str, int inicio, int fim) {
    if (inicio >= fim) return; 
    char temp = str[inicio];
    str[inicio] = str[fim];
    str[fim] = temp;
    inverterString(str, inicio + 1, fim - 1); 
}


int somaVetor(int* vetor, int tamanho) {
    if (tamanho == 0) return 0; // Caso base: vetor vazio
    return vetor[tamanho - 1] + somaVetor(vetor, tamanho - 1); 
}


int buscaBinaria(int* vetor, int inicio, int fim, int valor) {
    if (inicio > fim) return -1; 
    int meio = inicio + (fim - inicio) / 2;
    if (vetor[meio] == valor) return meio; // Valor encontrado
    if (vetor[meio] > valor) return buscaBinaria(vetor, inicio, meio - 1, valor);
    return buscaBinaria(vetor, meio + 1, fim, valor); 
}

int main() {
    
    int x = 8;
    int n = 4;
    printf("Potência: %d^%d = %d\n", x, n, potencia(x, n));

   
    int num = 5;
    printf("Fatorial: %d! = %d\n", num, fatorial(num));

   
    char str[] = "recursivo";
    inverterString(str, 0, strlen(str) - 1);
    printf("String invertida: %s\n", str);

    
    int vetor[] = {1, 2, 3, 4, 5};
    int tamanho = sizeof(vetor) / sizeof(vetor[0]);
    printf("Soma do vetor: %d\n", somaVetor(vetor, tamanho));

    
    int vetorOrdenado[] = {1, 3, 5, 7, 9};
    int tamanhoVetor = sizeof(vetorOrdenado) / sizeof(vetorOrdenado[0]);
    int valorProcurado = 7;
    int resultadoBusca = buscaBinaria(vetorOrdenado, 0, tamanhoVetor - 1, valorProcurado);
    if (resultadoBusca != -1) {
        printf("Valor %d encontrado na posição %d\n", valorProcurado, resultadoBusca);
    } else {
        printf("Valor %d não encontrado no vetor\n", valorProcurado);
    }

    return 0;
}
