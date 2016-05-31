# Posdiff

Ferramenta para gerar script de update entre duas bases de dados.

Dependencias: <br>
> pg_dump 9.5 <br>
> java 8

## Instalação pg_dump
> $ sudo apt-get install postgresql-client-9.5 </br>

## Build Jar
> $ mvn clean compile assembly:single</br>

## Run 
java -jar postdiff.jar</br>

## Utilizando</br>
**Lado Esquerdo** : Base de dados utilizada como referencia <br>
**Lado Direito**  : Base de dados de destino das alterações.


 
