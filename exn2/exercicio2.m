% 2)

x1 = [4.0, 1.0, 2.0, 2.0];
N = size(x1)
N = N(2)

X1 = fft(x1, N); % Amostras de X(exp(jw))

x1 = ifft(X1, 100)

freqz(X1)