# Базовый образ с OpenJDK 17
FROM openjdk:17-jdk-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем исходники в контейнер
COPY src/main/java /app/src/main/java

# Компилируем Java-код
RUN javac src/main/java/com/example/App.java

# Устанавливаем точку входа для запуска приложения
CMD ["java", "com.example.App"]
