@echo off
rem Устанавливаем путь к JUnit JAR
set JUNIT_PATH=lib/junit-platform-console-standalone-1.10.0.jar

rem Компилируем основной код и тесты
javac -cp ".;%JUNIT_PATH%" src/main/java/com/example/App.java src/test/java/com/example/AppTest.java

rem Запускаем тесты с использованием JUnit
java -cp ".;%JUNIT_PATH%" org.junit.runner.JUnitCore com.example.AppTest


