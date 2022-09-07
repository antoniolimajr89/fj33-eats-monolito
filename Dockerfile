FROM openjdk:8-jre-alpine
VOLUME /tmp
ADD /target/eats-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Xms1024m", "-Xmx1024m", "-XX:-UseGCOverheadLimit","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]