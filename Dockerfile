FROM java:8

ADD imustacm-user-service/target/imustacm-user-service-1.0-SNAPSHOT.jar /server/app.jar
WORKDIR /server
ENV JAVA_OPTS=""
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /server/app.jar" ]