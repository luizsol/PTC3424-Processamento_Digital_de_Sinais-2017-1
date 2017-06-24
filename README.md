# PTC3424 – Processamento Digital de Sinais

* Instituição: [Escola Politécnica da Universidade de São Paulo](http://www.poli.usp.br/)
* Professora: [Maria D. Miranda](http://buscatextual.cnpq.br/buscatextual/visualizacv.do?metodo=apresentar&id=K4787453A9) ([maria@lcs.poli.usp.br](maria@lcs.poli.usp.br))
* Data: 1º semestre de 2017

## Materiais do curso
* [Informações sobre o curso PTC3424](files/PTC3424_2017A.pdf)

### Gabaritos
#### Testes
* [Teste 1](files/Gabarito_Testinho_1-PTC-3424.pdf)
* [Teste 2](files/Gabarito_Testinho_2-PTC-3424.pdf)
* [Teste 3](files/Gabarito_Testinho_3-PTC-3424.pdf)

#### Provas
* [Prova 1](files/Gabarito_P1_PTC3424_2017.pdf)
* [Enunciado Prova 2](files/P2_2017.pdf) | [Gabarito Prova 2](files/p2g.pdf) | [Formulário Prova 2](files/FormularioP2_2017.pdf)

## Introdução
* [Introdução](files/Primeira_aula_motivacao_2016_2.pdf)
* [Introduction Oppenheim 2009](files/Introduction_Oppenheim_2009.pdf)
* [What is Signal Processing? (youtube)](https://www.youtube.com/watch?v=EErkgr1MWw0)
* [Why PDS ? (youtube)](https://www.youtube.com/watch?v=YC2rebzHVzo)
* [Introduction to Signal Processing (youtube)](https://www.youtube.com/watch?v=YmSvQe2FDKs)
* [A Beginner's Guide to Digital Signal Processing (DSP) (link)](http://www.analog.com/en/design-center/landing-pages/001/beginners-guide-to-dsp.html)
* [The death and possible rebirth of DSP (entrevista)](http://www.comsoc.org/ctn/death-and-possible-rebirth-dsp)

## 1. Análise e aplicações de sistemas lineares e invariantes no tempo

__Sugestão de referência__

* **Capítulos 3 e 5** do livro *A. V. Oppenheim, R. W. Shafer, R. Buck. Discrete-Time Signal Processing. Prentice Hall, NJ, 3ª Edição, 2010.*

### Revisão
* [TransZ-Historia (artigo de 1958)](files/TransZ-Historia.pdf)
* [Sistemas de tempo discreto. Parte 1](files/SistemasTD_Parte1_edit.pdf)
* [Sistemas de tempo discreto. Parte 2](files/SistemasTD_Parte2_edit.pdf)
* [Sistemas de tempo discreto. Parte 3](files/SistemasTD_Parte3_edit.pdf)
* [Resposta em frequência de sistemas de tempo discreto](files/RF_2015.pdf)

### 1.1 A Transformada Z

* [Definição; Exemplos; Região de Convergência; Propriedades](files/TZ_notas_2017.pdf)
* [Tz inversa](files/TZinv_2017.pdf)
* [Tz unilateral](files/TZuniilateral_10_2014.pdf)

### 1.2 Função de sistema (função de transferência) e resposta em frequência 

* [H(z) e resposta em frequência](files/TZ_HZ_2017.pdf)

### 1.3 Resposta em frequência de sistemas racionais a partir da posição de polos e zeros (revisão)

* [Zeros de H(z) e módulo e fase da resposta em frequência (vídeo)](files/Videos_FIR.rar)
* [Polos de H(z) e módulo e fase da resposta em frequência (vídeo)](files/Videos_IIR.rar)

### 1.4 Relação entre magnitude e fase; Sistemas Passa-tudo; Sistemas de fase mínima; Decomposição passa-tudo fase mínima

__Sugestão de referência__

* **Capítulo 5** do livro *A. V. Oppenheim, R. W. Shafer, R. Buck. Discrete-Time Signal Processing. Prentice Hall, NJ, 3ª Edição, 2010.*

#### Exemplos de diagrama de polos e zeros de sistemas passa-tudo, fase-mínima e decomposição passa-tudo fase-mínima

* [Exemplo A (vídeo)](files/h_A.rar)
* [Exemplo B (vídeo)](files/h_B.rar)

### 1.6 Sistemas de fase linear generalizada

__Sugestão de referência__

* **Capítulo 5** do livro *A. V. Oppenheim, R. W. Shafer, R. Buck. Discrete-Time Signal Processing. Prentice Hall, NJ, 3ª Edição, 2010.*

### Exercícios

#### Exercícios (1ª parte)
* Exercícios do **capítulo 3** do livro *A. V. Oppenheim, R. W. Shafer, R. Buck. Discrete-Time Signal Processing. Prentice Hall, NJ, 3ª Edição, 2010.*
* [Exercícios sobre Tz (parte 1)](files/Lista5_2014.pdf) | [Respostas (Parte 1)](files/Lista5_2014_resp.pdf)
* [Exercícios sobre Tz (parte 2)](files/Lista5_compl_2014.pdf) | [Respostas (Parte 2)](files/Lista5compl_2014_resp.pdf)
* [Exercício computacional 1](files/Lab_Tz_2014.pdf)

#### Exercícios (2ª parte)
* Exercícios do **capítulo 5** do livro *A. V. Oppenheim, R. W. Shafer, R. Buck. Discrete-Time Signal Processing. Prentice Hall, NJ, 3ª Edição, 2010.*
* [Lista sobre análise de sistemas LIT](files/Lista6_2014.pdf) | [Respostas da lista sobre análise de sistemas LIT](files/Lista6_2014_resp.pdf)
* [Exercício computacional 2: projeto de filtros compensadores](files/AulaLab03_2017.pdf) | [arquivos com imagem, som e rotina](files/arquivos_com_imagem_som_e_rotina.rar)
* [Exercício computacional 3: projeto de filtros notch](files/LAB_02_10_2014.pdf) | [dados](files/dados05102012.mat)

#### Outros exercícios
* Exercícios 5.19, 5.20, 5.45 e 5.55 do **capítulo 5** do livro *A. V. Oppenheim, R. W. Shafer, R. Buck. Discrete-Time Signal Processing. Prentice Hall, NJ, 3ª Edição, 2010.*

## 2. Transformadas de Fourier

### Introdução
* [The FFT and Its Applications (1969)](files/FFTandApp.pdf)
* [Gauss and the history of the FFT (1984)](files/Gauss_FFT.pdf)

### 2.1 TFTD: Definição e exemplos
* [TFTD: Definição e exemplos](files/TFs1.pdf)

### 2.2 TFTD: Propriedades
* [TFTD: Propriedades](files/TFTD_prop.pdf)

### 2.3 Ex. TFTD inversa: Passa baixas ideal e truncado
* [Ex. TFTD inversa: Passa baixas ideal e truncado](files/3_TFTDi_PassaBx.pdf)

### 2.4 TFTD de funções generalizadas
* [TFTD de funções generalizadas](files/TFTDgener_2017.pdf)

### 2.7 A Série de Fourier (SFD): Definição e propriedades
* [A Série de Fourier (SFD): Definição e propriedades](files/SFD_2017.pdf)

### 2.10 A Transformada de Fourier Discreta (TFD)
* [A Transformada de Fourier Discreta (TFD)](files/TFD_PDS_2017.pdf)

### 2.12 Introdução à análise espectral de sinais periódicos
* [Introdução à análise espectral de sinais periódicos](files/AnaliseEspectral.pdf)

### Propriedades e relações entre as TF's
* [Tabela de propriedades TFTD, SFD e TFD](files/TabelasPropriedades2017.pdf)
* [Relação TF e TFTD](files/TFTD_TD_2014.pdf)

### Exercícios

#### Exercícios conceituais
* **Capítulo 8** do livro *A. V. Oppenheim, R. W. Shafer, R. Buck. Discrete-Time Signal Processing. Prentice Hall, NJ, 3ª Edição, 2010.*
	* 8.2, 8.3, 8.5, 8.6,  8.8, 8.10, 8.11, 8.12, 8.14, 8.15, 8.18, 8.19.
	* 8.21, 8.23, 8.27, 8.29, 8.33
	* 8.35, 8.43 (opcional), 8.46
* **Capítulo 9** do livro *A. V. Oppenheim, R. W. Shafer, R. Buck. Discrete-Time Signal Processing. Prentice Hall, NJ, 3ª Edição, 2010.*
	* 9.1 ao 9.9
* Lista 4 | [Respostas](files/Lista4_2014_resp.pdf) | [Esboço do ex. 4a](files/ex_oppenheim.png)
* Lista 5 | [Respostas](files/Lista7_2014_resp.pdf)
* [Exercício computacional 1 com fft](files/Lab1_TFD_2014.pdf)
* [Exercício computacional 2](files/Lab_AE_2014.pdf) | [Resolução](files/Lab_AE_2014_R.pdf)
* [Exercício computacional 3](EC3)
* [Exercício computacional 4](EC4)

## 3. Projeto de Filtros digitais

### 3.1 Introdução

### 3.2 Projeto de filtros FIR
* [Notas parciais sobre projeto de filtros FIR](files/NotasPF_MDM_2017.pdf)
* Introdução e método do truncamento da resposta ao pulso unitário ideal.

### 3.3 Projeto de filtros IIR
* [Slides do Capítulo 7 do livro do Oppenheim](files/slidesCap7_Oppenheim.pdf)
	* Nas aulas foram usados apenas os slides referentes às Figuras: 7.1, 7.6, 7.7, 7.8, 7.27, 7.28, 7.29, 7.30, 7.31, 7.32, 7.40 até 7.50 e as Tabelas: 7.1 e 7.2.

### Exercícios

#### Exercícios conceituais
(sempre que possível verifique suas respostas com os comandos do MatLab)

* **Capítulo 7** do livro *A. V. Oppenheim, R. W. Shafer, R. Buck. Discrete-Time Signal Processing. Prentice Hall, NJ, 3ª Edição, 2010.*
	* 7.4.b, 7.5, 7.6, 7.7, 7.8, 7.10, 7.12, 7.14, 7.15, 7.16, 7.18, 7.20, 7.23,  7.36, 7.45
