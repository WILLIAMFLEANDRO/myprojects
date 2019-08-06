#Importados os dados
dados <- read.csv("D:/Analise Preditiva/dados.csv")
View(dados)

#Bibliotecas
library(ggplot2)

#Correlação de variaveis
cor(dados)
#Data_Vendas Temperature Ice_Cream_Sales
#Data_Vendas     1.000000000 0.002288447     0.001273003 #Positiva e Fraca
#Temperature     0.002288447 1.000000000     0.693606458 #Positiva e Moderada
#Ice_Cream_Sales 0.001273003 0.693606458     1.000000000 #Fraca e Positiva

#Y = ICE_CREAM_SALES
#X = Temperatura 

#Modelo de Predição

Modelo_reg = lm(Ice_Cream_Sales ~ Temperature, data = dados)

Modelo_reg

#Coefficients:
#(Intercept)  Temperature  
#9729.7        416.3  
summary(Modelo_reg)
#Residuals:
#  Min     1Q Median     3Q    Max 
#-14584  -3812  -1971   1610  22379 

#Exibindo os graficos
plot(Modelo_reg)

plot(Ice_Cream_Sales ~ Temperature, data = dados)

#Linha de melhor modelo
abline(Modelo_reg)

#Previsão dos dados por Temperatura
Modelo_reg$coefficients

# PREVISAO = INTERSECCAO + (inclinacao * Valor a Prever)
Modelo_reg$coefficients[1] + Modelo_reg$coefficients[2] * 65

#(Intercept) 
#36791.43 

predict(Modelo_reg, data.frame(Temperature=100))
#1 
#36791.43

#Anova
anova(Modelo_reg)