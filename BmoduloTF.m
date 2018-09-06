%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Processamento Digital de Sinais
%Prof. Dr. Carlos Alexandre Rolim Fermamdes
%Codigo para visualizar a Tranformada de Fourier

Yf = fftshift(fft(x)); %Calcula a transformada do sinal e remonta em Yf
freq = linspace(-pi,pi,length(Yf)); %Dispoe as frequencias de -pi a pi
figure,plot(freq,abs(Yf)) %plota o modulo da transformada do sinal pela frequencia
xlabel('Frequencia em Rad/s') %Legenda eixo x
ylabel('Espectro de magnitude') %Legenda eixo y