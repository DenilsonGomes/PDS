%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Processamento Digital de Sinais
%Prof. Dr. Carlos Alexandre Rolim Fermamdes
%Codigo para visualizar o sinal filtrado (tempo e frequencia)

y_filt = filter(B,A,x); %Aplica o filtro no sinal x
figure,plot(real(y_filt)) %Plota o sinal filtrado no tempo
ylabel('Espectro de Magnitude do Sinal Filtrado')
xlabel('Tempo Discreto')

Yw_filt = fftshift(fft(y_filt)); %Yx_filt é a transformada de fourier do sinal transformado
freq_vec = linspace(-pi,pi,length(Yw_filt)); %Dispoe as frequencias
figure,plot(freq_vec,abs(Yw_filt)) %Plota TF do sinal filtrado
ylabel('Espectro de magnitude do Sinal Filtrado')
xlabel('Frquencia em Rad/s')