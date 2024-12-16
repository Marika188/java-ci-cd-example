@echo off

rem Установим переменные для папок
set LIB_PATH=lib\junit-platform-console-standalone-1.10.0.jar
set SRC_PATH=src\main\java
set TEST_PATH=src\test\java
set BUILD_PATH=out

rem Удалим старую сборку (если есть)
if exist %BUILD_PATH% rmdir /s /q %BUILD_PATH%
mkdir %BUILD_PATH%

rem Компиляция кода
echo Компиляция исходного кода...
javac -d %BUILD_PATH% -cp %LIB_PATH% %SRC_PATH%\com\example\App.java %TEST_PATH%\com\example\AppTest.java

rem Запуск тестов
echo Запуск тестов...
java -jar %LIB_PATH% -cp %BUILD_PATH% --scan-classpath --include-classname=com.example.AppTest

