%Dado 2 ingredientes buscar recetas que contengan esos 2
% ingredientes, tenga un tiempo de coccion menor a 60 min y sean por lo menos para 3 comensales.%

%receta(nombre,tiempo,cant comensales).%

%ingrediente(nombre receta,ingrediente,cant ingrediente).%

receta(fideos,10,2).
receta(pollo,60,4).
receta(pizza,25,4).
receta(asado,45,3).

ingrediente(pollo,pollo,1).
ingrediente(asado,chorizo,3).
ingrediente(asado,morcilla,3).
ingrediente(asado,vacio,1).
ingrediente(asado,costeleta,3).
ingrediente(pizza,tomate,2).
ingrediente(pizza,preprizza,1).
ingrediente(pizza,queso,4).
ingrediente(pollo,papa,5).
ingrediente(asado,tomate,2).
ingrediente(asado,queso,2).


buscar_receta(I1,I2,X):-ingrediente(X,I1,_),ingrediente(X,I2,_),receta(X,T,C),T<60,C>=3.
