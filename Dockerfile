# Usar una imagen base de JDK 17
FROM openjdk:17-jdk-slim

# Crear un directorio de aplicación
WORKDIR /app

# Copiar el archivo JAR
COPY target/S3-1.0.jar app.jar

# Exponer el puerto
EXPOSE 8080

# Ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
