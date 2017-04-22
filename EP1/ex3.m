%                2
% V0(z) = ----------------, 0.5 < |z| < 1
%         (z + 0.5)(z + 1)

%Definindo coeficientes do numerador
b0 = 2;

%Definindo coeficientes do denominador
a1 = [1 0.5];
a2 = [1 1];

%Definindo o valor final do numerador
b = b0;

%Definindo o valor final do denominador
a = conv(a1, a2);

%Encontrando a expansão em frações parciais de V0
[r0,p0,k0] = residuez(b,a)

%Resultado:
%             4            2
% V0(z) = --------  -  --------- , 0.5 < |z| < 1
%          1+z^-1      1+0.5z^-1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%                              2
% V1(z) = z^2 + 3z + 5 +  ------------ , 4 < |z| < inf <=>
%                         z^2 + 5z + 4
%         (z^2 + 3z + 5)(z^2 + 5z + 4) + 2
% V1(z) = -------------------------------- , 4 < |z| < inf <=>
%                    z^2 + 5z + 4

%Definindo coeficientes do numerador
b1 = [1 3 5];
b2 = [1 5 4];
b3 = [0 0 0 0 2];
 
b = conv(b1, b2) + b3;
 
%Definindo coeficientes do denominador
a = [1 5 4];
 
%Encontrando a expansão em frações parciais de V1
[r1,p1,k1] = residuez(b,a)

%Resultado:
%          0.0104         0.6667
% V1(z) = ---------  -  --------- + 1.6563 + 2.375z^-1 + 5.5z^-2, 4 < |z| < inf
%          1+4z^-1        1+z^-1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%                       z^4
% V2(z) = ----------------------------- , 0.6 < |z|
%         (z - 0.5)^2(z - 0.2)(z + 0.6)

%Definindo coeficientes do numerador
b = [1 0 0 0 0];

%Definindo coeficientes do denominador
a1 = [1 -0.5];
a2 = [1 -0.2];
a3 = [1 0.6];
a = conv(a1,conv(a1,conv(a2,a3)));

%Encontrando a expansão em frações parciais de V2
[r2,p2,k2] = residuez(b,a)

%Resultado:
%          0.2231       0.0918      0.7576      0.1111
% V1(z) = ---------- - --------- + --------- + ---------,  0.6 < |z|
%         1+0.6z^-1    1-0.5z^-1   1-0.5z^-1   1-0.2z^-1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%