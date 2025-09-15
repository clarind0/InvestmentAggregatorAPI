# Usar o JDK 21 como base
FROM openjdk:21-jdk

# Definir diretório de trabalho
WORKDIR /app

# Copiar o jar gerado pelo Maven/Gradle
COPY target/*.jar app.jar

# Comando de inicialização da aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
