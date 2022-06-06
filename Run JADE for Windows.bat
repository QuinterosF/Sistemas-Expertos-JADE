@ echo off
title Ejecutar JADE - by Fernando Quinteros Coca
color 9

c:
cd..
cd..
cd jade

echo +----------------------------------------+
echo :    UNIVERSIDAD NACIONAL "SIGLO XX"     :
echo :   CARRERA DE INGENIERÍA INFORMÁTICA    :
echo :        INTELIGENCIA ARTIFICIAL         :
echo +----------------------------------------+
echo :    PROGRAMA PARA EJECUTAR JADE         :
echo :          1. Ejecutar jade              :
echo :          2. Ejecutar agente            :
echo +----------------------------------------+
echo.
set /p menu=Elige una opción:

if "%menu%"=="1" goto op1
if "%menu%"=="2" goto op2

:op1
cls
java jade.Boot -gui
pause>nul
cls

:op2
cls
set /p yn=El archivo está dentro de una carpeta [y/n]:
if "%yn%"=="y" goto opy
if "%yn%"=="n" goto opn

:opy
set /p nombre=Ingrese el nombre del Agente:
set /p javaFile=Ingrese el nombre del archivo java:
set /p carpeta=Ingrese la carpeta donde está el archivo java:
cd src
cd %carpeta%
javac %javaFile%.java
pause
cd..
cd..
java jade.Boot -gui %nombre%:%carpeta%.%javaFile%
pause>nul
cls


:opn
set /p nombre=Ingrese el nombre del Agente:
set /p javaFile=Ingrese el nombre del archivo java:
cd src
javac %javaFile%.java
pause
cd..
java jade.Boot -gui %nombre%:%javaFile%
pause>nul
cls
