%Definindo as equações

%                               z^2 - 1.2z + 1
%Ha(z) = z^-2 - 1.2z^-1 + 1  = ---------------
%                                     z^2
Hanum = [1, -1.2, 1];
Haden = [1, 0, 0];

%             z^2 -1
%Hb(z) = ------------------
%        z^2 - 1.2z + 0.95
Hbnum = [1, 0, -1];
Hbden = [1, -1.2, 0.95];


figure
freqz(Hanum, Haden); title('Ha(z)');
freqz(Hbnum, Hbden); title('Hb(z)');