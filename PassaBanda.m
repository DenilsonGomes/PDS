%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Processamento Digital de Sinais
%Prof. Dr. Carlos Alexandre Rolim Fermamdes
%Codigo para implementar filtro passa-banda

stem(x) %Plotagem do sinal antes de aplicar o filtro
ylabel('Amplitude do Sinal')
xlabel('Tempo')

% Filtro
wc1 = 0.3*pi; %Frquencia inicial
wc2 = 0.6*pi; %Frquencia final
[B,A] = butter(4, [wc1/pi,wc2/pi]); %Coeficientes do filtro PB
[H,W] = freqz(B,A,length(x));
figure,plot(W,abs(H)) %Plota o modulo do filtro Passa-Banda
ylabel('Modulo do Filtro') %legenda eixo y
xlabel('Frequencia') %legenda eixo x

%Filtrar o sinal
x_filt = filter(B,A,x); %Filtra o sinal com ruido
figure,plot(n,x_filt) %Plota o sinal filtrado
ylabel('Amplitude do Sinal Filtrado')
xlabel('Tempo')

Xw = fftshift(fft(x)); %Transformada de Fourier do sinal filtrado
figure,plot(freq_vec,abs(Xw)) %plota o modulo do sinal filtrado
ylabel('Espectro de magnitude do sinal')
xlabel('Frequencia')

Xw_filtrado = fftshift(fft(x_filt)); %Transformada de Fourier do sinal filtrado
figure,plot(freq_vec,abs(Xw_filtrado)) %plota o modulo do sinal filtrado
ylabel('Espectro de magnitude do sinal filtrado')
xlabel('Frequencia')