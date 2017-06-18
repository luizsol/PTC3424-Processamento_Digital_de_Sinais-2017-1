% 1) (a) i.
% variáveis de domínio
N = 11;
n = 0:N-1;
k = 0:N-1;

% funções no domínio do tempo
xa = 3*cos((pi/11)*n) + sin((pi/11)*n).^2;
xb = exp(-2*n);

% funções no domínio da frequência
Xa = fft(xa, N);
Xb = fft(xb, N);

% apresentação do resultado para questão
figure(1)
subplot(3,2,1); stem(n, xa); grid
title('xa(n)')
subplot(3,2,2); stem(n, xb); grid
title('xb(n)')

subplot(3,2,3); stem(k, abs(Xa)); grid
title('Modulo da TFD de xa')
subplot(3,2,4); stem(k, abs(Xa)); grid
title('Modulo da TFD de xb')

subplot(3,2,5); stem(k, angle(Xa)); grid
title('Fase da TFD de xa')
subplot(3,2,6); stem(k, angle(Xb)); grid
title('Fase da TFD de xb')

% 1) (a) ii.
y11 = ifft(Xa.*Xb, N);

% 1) (b)
N = 30;

Xa = fft(xa, N);
Xb = fft(xb, N);

k = 0:N-1;

figure(2)
subplot(3,2,1); stem(n, xa); grid
title('xa(n)')
subplot(3,2,2); stem(n, xb); grid
title('xb(n)')

subplot(3,2,3); stem(k, abs(Xa)); grid
title('Modulo da TFD de xa com 30 pontos')
subplot(3,2,4); stem(k, abs(Xa)); grid
title('Modulo da TFD de xb com 30 pontos')

subplot(3,2,5); stem(k, angle(Xa)); grid
title('Fase da TFD de xa com 30 pontos')
subplot(3,2,6); stem(k, angle(Xb)); grid
title('Fase da TFD de xb com 30 pontos')

y30 = ifft(Xa.*Xb, N);

% 1) (c)

yL = conv(xa, xb)

% 1) (d)

n2 = 0:20;
figure(3)
subplot(3,1,1); stem(n, y11); grid
title('y11(n)')
subplot(3,1,2); stem(k, y30); grid
title('y30(n)')
subplot(3,1,3); stem(n2, yL); grid
title('yL(n)')