% Cálculo da TFTD
% k = número de pontos da TFTD
k = 2 ^ 10;
r=input('Entre com o valor (0 < r < 1) de r = ');
theta=input('Entre com o valor (em radianos) de theta = ');
% Polinômio do denominador
den=[1 - 2 * r * cos(theta) r ^ 2];
% Polinômio do numerador
num=1;
% Frequência angular - contínua
w = 0 : pi/k : pi;
% Cálculo da resposta em frequência
H = freqz(num, den, w);
% Gráficos
subplot(2,2,1); zplane(num,den);grid;
xlabel('real(omega)'); ylabel('imag(omega)')
subplot(2,2,2); plot(w/pi,abs(H)/max(abs(H)));grid;
axis([0 1 0 1]); title('Módulo do espectro')
xlabel('Frequência angular normalizada'); ylabel('Modulo normalizado')
subplot(2,2,4); plot(w/pi,angle(H));grid;
axis([0 1 -pi pi]); title('Fase do espectro')
xlabel('Frequência angular normalizada'); ylabel('Fase em radianos')