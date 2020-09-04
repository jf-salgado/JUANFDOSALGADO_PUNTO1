%Determine el valor de un pasaje en avión, conociendo la distancia a recorrer, el número de
%días de estancia, y sabiendo que, si la distancia a recorrer es superior a 1000 Km y el
%número de días de estancia es superior a 7, la línea aérea le hace un descuento del 30%.
%(el precio por km. es de $35.00)

clear 
clc

valor=35.00;
dst=input('Ingrese la distancia a recorrer en Km: '); %datos a ingresar
dias=input('Ingrese dias de estancia: ');
if dst>1000 && dias>7
    precio=valor*dst;
    precioT=precio-(precio*0.30); %descuento por distancia y dias de instancia
    fprintf('El precio del boleto de avión es: $%.f\n',precioT); 
else
    precioT=valor*dst; %valor del pasaje sin descuento
    fprintf('El precio del boleto de avión es: $%.f\n',precioT);
    
end
