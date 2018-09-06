%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computa��o
%Processamento Digital de Sinais
%Prof. Dr. Carlos Alexandre Rolim Fermamdes
%Script para gerar um sinal que � a soma de tr�s fun��es seno com freq��ncias angulares discretas

n = 0:1:100; %Numero de pontos
w1 = 0.1*pi; w2 = 0.5*pi; w3 = 0.75*pi; %Frequencias
x = sin(n*w1) + 1.5*sin(n*w2) + 0.5*sin(n*w3); %Gera o sinal que � a soma dos 3 senos com suas frequencias
stem(x) %Plota o sinal