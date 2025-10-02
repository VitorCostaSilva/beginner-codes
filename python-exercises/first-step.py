#Programa para verificar se um número é positivo, negativo ou zero
numero = int(input("Digite um numero inteiro: "))

if numero % 2 == 0:
    print("O numero", numero, "é PAR.")
else:
    print("O numero", numero, "é IMPAR.")

#Peça ao usuário para digitar um texto e mostre quantos caracteres ele tem
texto = input("Digite uma frase: ")

tamanho =len(texto)

print("Tamanho do texto é: ", tamanho)

#Leia uma palavra e mostre a primeira e a última letra dela.
palavra = input("Digite uma palavra: ")

print(palavra[0], palavra[-1])

#Peça uma frase e exiba a mesma frase toda em maiúsculas.]
maiusculo = input("Digite uma frase:")

print(maiusculo.upper())

#Leia uma palavra e diga quantas vogais (a, e, i, o, u) ela tem.
contador = 0
palavra = input("Digite uma palavra: ").lower()
for letra in palavra:
    if letra in "aeiou":
        contador = contador +1 
print(contador)

#Verifique se a palavra digitada é igual de trás para frente (ex.: “ana”, “arara”).
palavra = input("Digite uma palavra: ")

invertida = (palavra[::-1])

if invertida == palavra:
    print("palavra invertida é igual ao normal(palíndromo)!")
else:
    print("Não é um palíndromo! Versão invertida: ", invertida)

#Faça um programa que receba um número inteiro e mostre a soma de todos os seus dígitos.
contador = 0
numero = input("Digite um numero inteiro: ")

for digito in numero:
    contador = contador + int(digito)
print("Resultadoda soma dos numeros: ",contador)

#Leia um número inteiro N e mostre uma lista com todos os números pares de 1 até N.
numero= int(input("Digite um numero: "))
for numero_lista in range(1, numero + 1):
    if numero_lista % 2 == 0:
        print(numero_lista)

#Peça ao usuário para digitar várias palavras separadas por espaço e mostre qual é a palavra com maior quantidade de caracteres.
palavra_mais_longa = ""
maiortamanho = 0
frase = input("Digite uma frase: ")
lista_de_palavras = frase.split()
for palavra in lista_de_palavras:
    if len(palavra) > maiortamanho:
        maiortamanho = len(palavra)
        palavra_mais_longa = palavra
print(palavra_mais_longa, maiortamanho)

#Peça uma frase ao usuário e mostre quantas vezes cada letra aparece. Ignore espaços.
frase = input("Digite uma frase: ")
sem_espaco = frase.replace(" " ,"") #Retirando os espaços da frase
contagem_letras = {}
for letra in sem_espaco:
    if letra in contagem_letras:
        contagem_letras[letra] = contagem_letras[letra] +1 # Soma 1 se a letra já existe
    else:
        contagem_letras[letra] = 1 # Define como 1 se é a primeira vez
print(contagem_letras)
        
#Receba uma lista de números separados por espaço e mostre apenas os números que aparecem uma única vez.
numeros = input("Digite uma lista de numeros: ")
numeros_lista = numeros.split()
numeros_lista_inteiros  = []
contagem_num_lista = {}

for numint in numeros_lista:
    numeros_lista_inteiros.append(int(numint))

for numint in numeros_lista_inteiros :
    if numint in contagem_num_lista:
        contagem_num_lista[numint] += 1 
    else:
        contagem_num_lista[numint] = 1 

for numero, contagem in contagem_num_lista.items():
    if contagem == 1:
        print("Numeros que apareceram uma vez:", numero)

