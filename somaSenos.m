%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Processamento Digital de Sinais
%Prof. Dr. Carlos Alexandre Rolim Fermamdes
%Script para gerar um sinal que é a soma de três funções seno com freqüências angulares discretas

n = 0:1:200; %Numero de pontos
w1 = 0.1*pi; w2 = 0.5*pi; w3 = 0.75*pi; %Frequencias
x = sin(n*w1) + sin(n*w2) + sin(n*w3);
stem(x)