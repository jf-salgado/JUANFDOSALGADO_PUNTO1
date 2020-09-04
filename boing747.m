clear
clc

cargaT= 18000;
precioT=0;               %variables indicadas      
precioP=0;
cant=0;

b=input('Cantidad de bultos');

for n=1:b %cantidad de bultos a examinar
    m(n)=input('ingrese peso del bulto ');
    
    if m(n)>=501 
       disp('¡¡¡EXCESO DE PESO EN EL BULTO!!!')
       m(n)=[];
       m(n==0)=[]; %se ignora el peso cuando se sobrepasa los 500 kg 
    else
        if m(n)>=0 && m(n)<=25
           disp('No se cobra') %punto A
        else
            if m(n)>=26 && m(n)<=300
               precioP=m(n)*1500; %punto B
            else
                if m(n)>=301 && m(n)<=500
                   precioP=m(n)*2500; %punto c
                end
            end
 precioT=precioT+precioP;   %acumulador de precios        
        end
 cant=size(m,2); %cantidad de bultos que se aceptaron
 pesado=max(m); %bulto mas pesado
 liviano=min(m);%bulto mas liviano
 prom=sum(m);
 promt=prom/cant; %promedio de peso
 dolares=precioT/3700; %de pesos a dolares
 cargaeq=sum(m); %carga en el avion
 if cargaeq>=cargaT
     disp('¡¡EXCESO DE PESO EN EL AVION!!!')
 end
    end    
end
disp('-----------------------------------------------------------')
fprintf('El número de bultos en el avión es de: %.f\n',cant)
fprintf('El bulto mas pesado en Kg es: %.f\n',pesado)
fprintf('El bulto mas liviano en Kg es: %.f\n',liviano)
fprintf('El promedio de pesos es: %.f\n',promt)                    %valores a mostrar
fprintf('El precio en pesos es: %.f\n',precioT)
fprintf('El precio en dolares es: %.f\n',dolares)
fprintf('La carga del avion en Kg es de: %.f\n',cargaeq)