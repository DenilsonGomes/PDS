%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Processamento Digital de Sinais
%Prof. Dr. Carlos Alexandre Rolim Fermamdes
%Codigo para calcular os coeficientes de um filtro passa-baixa

% Filtragem
wc1 = 0.3*pi; %Frquencia de conrte
[B,A] = butter(4, wc1/pi) %Coeficientes do filtro PB
[H,W] = freqz(B,A,length(x));
figure,plot(W,abs(H)) %Plota filtro Passa-Baixa
ylabel('Aceitação do sinal') %legenda eixo y
xlabel('Frequencia') %legenda eixo x