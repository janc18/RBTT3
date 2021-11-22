%Pendulo simple
clear
clc
pkg load symbolic 
%Elaborado por Jose Agustin
%-----VARIABLES SIMBOLICAS----------------------------
%theta =Angulo
%theta_=Angulo primera derivada
%l    =Distancia del eslabon
%m  =Masa
%g   =Gravedad
syms l m g a theta 
th1=sym('theta_');
%Ecuaciones de posicion---------------------------------

disp("Ecuacion de posicion");
x=(l*(sin(theta)))
y=(-l*(cos(theta)))
%Ecuacion de aceleracaion(derivada)
disp("Derivadas de posicion");
##Es nesesario calcular la derivada manualmente por el momento###
disp("dx/dtheta=");
xd=th1*l*(cos(theta))
disp("dy/d\theta=");
yd=th1*l*(sin(theta))
%Energia potencial
disp("Energia potencial");
disp("U=m*g*y");
U=m*g*y
disp("Energia cinetica");
disp("T=1/2*m||x||");
T=((1/2)*m*((xd*xd)+(yd*yd)))
Ts=simplify(T)
disp("L=T-U");
L=Ts-U
%Derivadas de parciales
%dL/dtheta
disp("Primera derivada parcial con respecto theta");
dt0=diff(L,theta)
#no se logro agregar el super indice
disp("Primera derivada parcial con respecto theta'");
dt1=diff(L,th1)
disp("derivada parcial con respecto al tiempo'");
dt1s=l*m*theta^'s'
t=dt1s-dt0

