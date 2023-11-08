FROM openjdk:8u151-jdk-alpine3.7
  
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY /home/runner/work/secretsanta-generator/secretsanta-generator/target/secretsanta-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT exec java -jar app.jar 
