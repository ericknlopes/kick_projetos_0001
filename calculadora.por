programa
{
    funcao inicio()
    {
        real numero1, numero2, resultado
        inteiro opcao
        cadeia nome
        escreva("Seja bem vindo a calculadora! \n Qual o seu nome? ")
        leia(nome)
        faca {

            escreva("\n Olá ", nome, ", escolha uma opção do Menu, ou digite 5 para encerrar:\n1. Soma\n2. Subtração\n3. Multiplicação\n4. Divisão\n5. Sair\nEscolha uma opção:  ")
            leia(opcao)

            se (opcao != 5) {
                escreva("Digite o primeiro número: ")
                leia(numero1)
                escreva("Digite o segundo número: ")
                leia(numero2)

                se (opcao == 1) {
                    resultado = numero1 + numero2
                    escreva("Resultado da soma: " + resultado + "\n\n")
                } senao se (opcao == 2) {
                    resultado = numero1 - numero2
                    escreva("Resultado da subtração: " + resultado + "\n\n")
                } senao se (opcao == 3) {
                    resultado = numero1 * numero2
                    escreva("Resultado da multiplicação: " + resultado + "\n\n")
                } senao se (opcao == 4) {
                    se (numero2 != 0) {
                        resultado = numero1 / numero2
                        escreva("Resultado da divisão: " + resultado + "\n\n")
                    } senao {
                        escreva("Erro! Divisão por zero não é permitida.\n\n")
                    }
                }


            }
        } enquanto (opcao != 5)
    }
}
