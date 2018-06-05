print ("\n****************************** Calculadora Python *********************************")

print ("\nSelecione o número da operação desejada: ")


print ('1 - Soma')
print ('2 - Subtracao')
print ('3 - Multiplicacão')
print ('4 - Divisão')

nOpcoes = int(input("\nDigite sua opção (1/2/3/4): "))
                                                                                                                                                     
num1 = int(input("\nDigite primeiro numero: "))

num2 = int(input("\nDigite segundo numero: "))


if nOpcoes == 1:
	print(num1 + num2)
elif nOpcoes == 2:
	print(num1 - num2)
elif nOpcoes == 3:	
	print(num1 * num2)	
elif	nOpcoes == 4:	
	print(int(num1 / num2))
else:
	print("Foi digitado uma opção incorreta, por favor, corrija e tente novamente! ")
