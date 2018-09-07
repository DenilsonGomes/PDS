%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Processamento Digital de Sinais
%Prof. Dr. Carlos Alexandre Rolim Fermamdes
%Codigo para implementar filtro passa-banda

% Filtragem
wc1 = 0.3*pi; %Frquencia inicial
wc2 = 0.6*pi; %Frquencia final
[B,A] = butter(4, [wc1/pi,wc2/pi]); %Coeficientes do filtro PB
[H,W] = freqz(B,A,length(x));
figure,plot(W,abs(H)) %Plota o modulo do filtro Passa-Baixa
ylabel('Modulo do filtro') %legenda eixo y
xlabel('Frequencia') %legenda eixo x