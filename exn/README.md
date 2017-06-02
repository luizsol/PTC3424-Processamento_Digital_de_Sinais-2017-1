# TAREFA: Análise espectral de uma dada sequência

Sabe-se que as sequências `xa(n)` e `xb(n)` resultaram da amostragem de dois sinais de tempo contínuo a uma frequência `fs=500Hz`. Deseja-se obter um modelo (expressão matemática) para cada um desses sinais de tempo contínuo.

1. Inicialmente, carregue no MATLAB o sinal `xa(n)` disponível no arquivo `xa.mat` ao final da página. Sugestão de script:

	```Matlab
	fs=500; % Frequência de amostragem
	load xa.mat;
	x=xa;
	N=length(x);
	n=0:N-1;
	figure(1)
	stem(n,x); title('sinal de tempo discreto'); 
	xlabel('n')
	```
2. A partir da sequência `x`, crie quatro outras sequências janeladas. Sugestão de script:
	
	```Matlab
	xretangular=x;
	xhamm=x.*hamming(N)'*N/sum(hamming(N));
	xblac=x.*blackman(N)'*N/sum(blackman(N));
	xtriang=x.*triang(N)'*N/sum(triang(N));
	```
3. Faça a `fft` para uma das sequências janeladas com `N` pontos.

    **Resposta:**
    
    ```Matlab
	out_reta = fft(x, N);
	out_hamm = fft(xhamm, N);
	out_blac = fft(xblac, N);
	out_tria = fft(xtriang, N);
	```
4. Visualize o módulo de cada uma das `fft`s. Para facilitar a comparação, crie a tela gráfica `figure(2)` e divida-a em 4 linhas e 1 coluna com o comando `subplot`.

	Use os fatores de escala adequados para ler diretamente no eixo das abscissas as frequências cíclicas (em Hz) e no eixo das ordenadas o valor da magnitude do sinal.
    
     **Resposta:**
    
    ```Matlab
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
	```
    ![fft1](img/fft1.jpg)

5. A partir dessas figuras, estime os valores das componentes senoidais que formam o sinal de tempo contínuo correspondente à sequência `xa(n)`, ou seja,  `xa(t)`.

	Na sua opinião, qual é o melhor resultado?
    
    **Resposta:**
   
    Como podemos ver pela imagem acima (ajustei o intervalo de `f` para que seja apresentadas apenas amostras de frequências inferiores a `fs/2`) a provável forma do sinal `xa(t)` é `xa(t) = cos(2*pi*60[Hz]*t) + 0.2*cos(2*pi*70[Hz]*t)`.
    O melhor resultado para detecção da frequência de maior amplitude (`60[Hz]`) foi do fft com a janela retangular, pois gerou os menores lóbulos secundários. Já para a frequência de de menor amplitude (`70[Hz]`) o melhor resultado foram os da janela de Hamming e da triangular, pois deixaram mais evidente que essa frequência não é só um lóbulo secundário da frequência dominante.
    
6. A fim de ter um pouco mais de certeza em sua resposta, sugere-se incluir mais pontos na `fft`. Sendo assim, refaça as `fft`s do item 3 com 1024 pontos. 	
	Novamente, para facilitar a comparação, crie a tela gráfica `figure(3)` e divida-a em 4 linhas e 1 coluna com o comando `subplot`.
	
	Use os fatores de escala adequados para ler diretamente no eixo das abscissas as frequências cíclicas (em Hz) e no eixo das ordenadas o valor da magnitude do sinal.

	Dica de script para o caso da janela retangular:

	```Matlab
	Kt=1024;
	X_1024R=(2/N)*fft(xretangular,Kt);
	k1024=(fs)*[0:Kt-1]/Kt;
	```
    
    **Resposta:**
    
    ```Matlab
	w_1024 = (fs/1024)*(0:1023);
    out_reta_1024 = (2/N)*fft(x, 1024);
    out_hamm_1024 = (2/N)*fft(xhamm, 1024);
    out_blac_1024 = (2/N)*fft(xblac, 1024);
    out_tria_1024 = (2/N)*fft(xtriang, 1024);

    figure(3)
    subplot(4, 1, 1); stem(w_1024(1:1024/2+1), abs(out_reta_1024(1:1024/2+1))); 
    title ('|fft(xa)| com 1024 pontos e janela retangular');
    subplot(4, 1, 2); stem(w_1024(1:1024/2+1), abs(out_hamm_1024(1:1024/2+1))); 
    title ('|fft(xa)| com 1024 pontos e janela hamming');
    subplot(4, 1, 3); stem(w_1024(1:1024/2+1), abs(out_blac_1024(1:1024/2+1))); 
    title ('|fft(xa)| com 1024 pontos e janela blackman');
    subplot(4, 1, 4); stem(w_1024(1:1024/2+1), abs(out_tria_1024(1:1024/2+1))); 
    title ('|fft(xa)| com 1024 pontos e janela triangular'); 
    xlabel('f(Hz)')
	```
    ![fft1](img/fft2.jpg)
7. A partir dessas figuras, estime novamente os valores das componentes senoidais que formam o sinal `xa(t)`.
	
     **Resposta:**
    As evidências apresentadas pelos resultados dos gráficos corroboram as conclusões obtidas na questão 5 de que `xa(t) = cos(2*pi*60[Hz]*t) + 0.2*cos(2*pi*70[Hz]*t)`.
8. Compare o resultado do item 7 com o do caso da `fft` com apenas `N` pontos. Justifique adequadamente sua conclusão.
 
     **Resposta:**
    Pudemos observar comparando os resultados da questão 5 com a da questão 7 que o aumento na quantidade de pontos da `fft` aumenta linearmente a resolução de amostragem do espectro, o que, por sua vez, aumenta a qualidade da estimativa das frequências significantes reais do sinal, bem como suas respectivas intensidades.
9. Repita os itens anteriores para a sequência  xb(n). Dica de script:

	```Matlab
	load xb.mat;  
	x=xb;
	```
    **Resposta:**
    
    ```Matlab
	load xb.mat;
    x=xb;
    N=length(x);
    n=0:N-1;
    figure(4)
    stem(n,x); title('Sinal de tempo discreto (xb)'); 
    xlabel('n')

    xretangular=x;
    xhamm=x.*hamming(N)'*N/sum(hamming(N));
    xblac=x.*blackman(N)'*N/sum(blackman(N));
    xtriang=x.*triang(N)'*N/sum(triang(N));

    out_reta = fft(x, N);
    out_hamm = fft(xhamm, N);
    out_blac = fft(xblac, N);
    out_tria = fft(xtriang, N);

    w = (fs/N)*n;
    out_reta_n = (2/N)*out_reta;
    out_hamm_n = (2/N)*out_hamm;
    out_blac_n = (2/N)*out_blac;
    out_tria_n = (2/N)*out_tria;
    figure(5)
    subplot(4, 1, 1); stem(w(1:N/2+1), abs(out_reta_n(1:N/2+1))); 
    title ('|fft(xb)| com N pontos e janela retangular');
    subplot(4, 1, 2); stem(w(1:N/2+1), abs(out_hamm_n(1:N/2+1))); 
    title ('|fft(xb)| com N pontos e janela hamming');
    subplot(4, 1, 3); stem(w(1:N/2+1), abs(out_blac_n(1:N/2+1))); 
    title ('|fft(xb)| com N pontos e janela blackman');
    subplot(4, 1, 4); stem(w(1:N/2+1), abs(out_tria_n(1:N/2+1))); 
    title ('|fft(xb)| com N pontos e janela triangular'); 
    xlabel('f(Hz)')

    w_1024 = (fs/1024)*(0:1023);
    out_reta_1024 = (2/N)*fft(x, 1024);
    out_hamm_1024 = (2/N)*fft(xhamm, 1024);
    out_blac_1024 = (2/N)*fft(xblac, 1024);
    out_tria_1024 = (2/N)*fft(xtriang, 1024);

    figure(6)
    subplot(4, 1, 1); stem(w_1024(1:1024/2+1), abs(out_reta_1024(1:1024/2+1))); 
    title ('|fft(xb)| com 1024 pontos e janela retangular');
    subplot(4, 1, 2); stem(w_1024(1:1024/2+1), abs(out_hamm_1024(1:1024/2+1))); 
    title ('|fft(xb)| com 1024 pontos e janela hamming');
    subplot(4, 1, 3); stem(w_1024(1:1024/2+1), abs(out_blac_1024(1:1024/2+1))); 
    title ('|fft(xb)| com 1024 pontos e janela blackman');
    subplot(4, 1, 4); stem(w_1024(1:1024/2+1), abs(out_tria_1024(1:1024/2+1))); 
    title ('|fft(xb)| com 1024 pontos e janela triangular'); 
    xlabel('f(Hz)')
	```
    ![fft3](img/fft3.jpg)
    ![fft4](img/fft4.jpg)
    
    Por esses gráficos podemos estimar que `xb(t) = 0.32*cos(2*pi*175[Hz]*t) + 0.32*cos(2*pi*180[Hz]*t)`