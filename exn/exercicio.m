%1)
fs=500; % Frequência de amostragem
load xa.mat;
x=xa;
N=length(x);
n=0:N-1;
figure(1)
stem(n,x); title('Sinal de tempo discreto'); 
xlabel('n')

%2)
xretangular=x;
xhamm=x.*hamming(N)'*N/sum(hamming(N));
xblac=x.*blackman(N)'*N/sum(blackman(N));
xtriang=x.*triang(N)'*N/sum(triang(N));

%3)
out_reta = fft(x, N);
out_hamm = fft(xhamm, N);
out_blac = fft(xblac, N);
out_tria = fft(xtriang, N);

%4)
w = (fs/N)*n;
out_reta_n = (2/N)*out_reta;
out_hamm_n = (2/N)*out_hamm;
out_blac_n = (2/N)*out_blac;
out_tria_n = (2/N)*out_tria;
figure(2)
subplot(4, 1, 1); stem(w(1:N/2+1), abs(out_reta_n(1:N/2+1))); 
title ('|fft(xa)| com N pontos e janela retangular');
subplot(4, 1, 2); stem(w(1:N/2+1), abs(out_hamm_n(1:N/2+1))); 
title ('|fft(xa)| com N pontos e janela hamming');
subplot(4, 1, 3); stem(w(1:N/2+1), abs(out_blac_n(1:N/2+1))); 
title ('|fft(xa)| com N pontos e janela blackman');
subplot(4, 1, 4); stem(w(1:N/2+1), abs(out_tria_n(1:N/2+1))); 
title ('|fft(xa)| com N pontos e janela triangular'); 
xlabel('f(Hz)')

%5)
% 
%
%

