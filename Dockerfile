FROM eclipse-temurin:8-jre-alpine

EXPOSE 8080

# WORKDIR added
WORKDIR /app

# COPY ./build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/
# WORKDIR /usr/app

# COPY command chnaged like below 
COPY ./build/libs/*.jar /app

ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]
