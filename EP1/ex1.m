%Definindo as equações
X0num = [1, -3, 2]; %Coeficientes do numerador da função de transf. X0
X0den = [1, -2, 0.75]; %Coeficientes do denominador da função de transf. X0

X1num = [1.7, 1, 0.7]; %Coeficientes do numerador da função de transf. X1
X1den = [1, -1.2, 0.8]; %Coeficientes do denominador da função de transf. X1

X2num = [4, -8.68, -17.98, 26.74, -8.04]; %Coeficientes do numerador da função de transf. X2
X2den = [1, -2, 10, 6, 65]; %Coeficientes do denominador da função de transf. X2

%Gerando as imagens de zeros e polos
figure
subplot(3,1,1)  
zplane(X0num,X0den) 
title('X0')

subplot(3,1,2)  
zplane(X1num,X1den)
title('X1')

subplot(3,1,3)  
zplane(X2num,X2den) 
title('X1')

%Calculando os polos e zeros
zX0 = roots(X0num) %Zeros de X0
pX0 = roots(X0den) %Zeros de X0

zX1 = roots(X1num) %Zeros de X1
pX1 = roots(X1den) %Zeros de X1

zX2 = roots(X2num) %Zeros de X2
pX2 = roots(X2den) %Zeros de X2

