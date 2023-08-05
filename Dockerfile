# Указываем базовый образ с Java
FROM openjdk:latest

# Создаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем FAT-JAR в контейнер
COPY target/list-0.0.1-SNAPSHOT.jar /app/app.jar

# Открываем порт, на котором будет работать приложение
EXPOSE 80

# Команда, которая будет выполнена при запуске контейнера
CMD ["java", "-jar", "app.jar"]
