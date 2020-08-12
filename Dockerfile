FROM adoptopenjdk/openjdk11:jre-11.0.6_10-alpine
MAINTAINER  Maxim Morev <maxmorev@gmail.com>
RUN mkdir /opt/bootiful \
    && chown 1001 /opt/bootiful \
    && chmod "g+rwX" /opt/bootiful \
    && chown 1001:root /opt/bootiful \
# Configure the JAVA_OPTIONS, you can add -XshowSettings:vm to also display the heap size.
ENV JAVA_OPTIONS="-Dquarkus.http.host=0.0.0.0 -Djava.util.logging.manager=org.jboss.logmanager.LogManager"
WORKDIR /opt/bootiful
COPY target/*-runner.jar /opt/bootiful/app.jar
EXPOSE 8080
USER 1001
CMD ["java", "-jar", "/opt/bootiful/app.jar"]