FROM openjdk:8-jre-alpine
EXPOSE 8080
COPY ./target/webapp-0.1.war /usr/app/
WORKDIR /usr/app
ENTRYPOINT ["java", "-war", "webapp-0.1.war"]
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
