function [X,Y,Z]=RotImag(A,B,Ac, Bc)
% corrompe e trata a imagem
% Entrada A, B, Ac, Bc
% Saída X, Y, Z


[X,MAP] = IMREAD('arco_triunfo.jpg');
X=im2double(X);
[dim1,dim2]=size(X(:,:,1));
% tres cores - vermelho - verde - azul (RGB)
X1=X(:,:,1);
X1=X1(:);
X2=X(:,:,2);
X2=X2(:);
X3=X(:,:,3);
X3=X3(:);


%Imagem corrompida
Y1=filter(B,A,X1);
Y2=filter(B,A,X2);
Y3=filter(B,A,X3);
Y1=(Y1+abs(min(Y1)))/max((Y1+abs(min(Y1))));
Y2=(Y2+abs(min(Y2)))/max((Y2+abs(min(Y2))));
Y3=(Y3+abs(min(Y3)))/max((Y3+abs(min(Y3))));
% 

Y=X;
 Y(:,:,1)=reshape((Y1),dim1,dim2);
 Y(:,:,2)=reshape((Y2),dim1,dim2);
 Y(:,:,3)=reshape((Y3),dim1,dim2);



%Imagem recuperada

Z1=filter(Bc,Ac,Y1);
Z2=filter(Bc,Ac,Y2);
Z3=filter(Bc,Ac,Y3);
Z1(1:10)=0;
Z2(1:10)=0;
Z3(1:10)=0;

Z1=(Z1+abs(min(Z1)))/max((Z1+abs(min(Z1))));
Z2=(Z2+abs(min(Z2)))/max((Z2+abs(min(Z2))));
Z3=(Z3+abs(min(Z3)))/max((Z3+abs(min(Z3))));

Z=X;
Z(:,:,1)=reshape((Z1),dim1,dim2);
Z(:,:,2)=reshape((Z2),dim1,dim2);
Z(:,:,3)=reshape((Z3),dim1,dim2);


