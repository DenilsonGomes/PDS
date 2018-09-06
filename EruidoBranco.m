%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Processamento Digital de Sinais
%Prof. Dr. Carlos Alexandre Rolim Fermamdes
%Codigo para adicionar um ruido gaussiano ao sinal, filtrar e analisar
%(tempo e frequenncia)

stem(x) %Plota o sinal
ylabel('Amplitude do Sinal')
xlabel('Tempo Discreto')

% Gerar o ruido
ruido_branco = randn(size(x));
ruido_branco = (ruido_branco - mean(ruido_branco))/10*std(ruido_branco);
figure,plot(n,ruido_branco) %Plota o ruido
ylabel('Amplitude do Ruido')
xlabel('Tempo Discreto')

% Adicionar ruido
y_ruido = x + ruido_branco*sqrt(1); %Adiciona o ruido
figure,plot(n,y_ruido) %Plota o sinal junto ao ruido
ylabel('Amplitude do Sinal com ruido')
xlabel('Tempo Discreto')

% Calcular TF do sinal com ruido
Yw_ruido = fft(y_ruido); %calcula a TF do sinal com ruido
figure,plot(freq_vec,fftshift(abs(Yw_ruido))) %plota o modulo do sinal com ruido
ylabel('Modulo do sinal com ruido')
xlabel('Frequencia')

figure,plot(freq_vec,fftshift(angle(Yw_ruido))) %plota a fase do sinal com ruido
ylabel('Fase do sinal com ruido')
xlabel('Frequencia')

%Filtrar o sinal com ruido
y_ruido_filtrado = filter(B,A,y_ruido); %Filtra o sinal com ruido
figure,plot(n,y_ruido_filtrado) %Plota o sinal filtrado
ylabel('Fase do sinal Filtrado')
xlabel('Frequencia')

Yw_ruido_filtrado = fftshift(fft(y_ruido_filtrado)); %Transformada de Fourier do sinal filtrado
figure,plot(freq_vec,abs(Yw_ruido_filtrado)) %plota o modulo do sinal filtrado
ylabel('Espectro de magnitude do sinal com ruido filtrado')
xlabel('Frequencia')

figure,plot(freq_vec,angle(Yw_ruido_filtrado)) %plota a fase do sinal filtrado
ylabel('Fase do sinal com ruido filtrado')
xlabel('Frequencia')