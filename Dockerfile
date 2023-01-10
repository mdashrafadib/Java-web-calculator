FROM openjdk:8-jre-alpine
EXPOSE 8080
COPY ./target/webapp-0.1.war /usr/app/
WORKDIR /usr/app
ENTRYPOINT ["java", "-war", "webapp-0.1.war"]
