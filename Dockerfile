FROM adoptopenjdk/openjdk11:jre-11.0.6_10-alpine
MAINTAINER  Maxim Morev <maxmorev@gmail.com>
RUN mkdir /opt/micro \
&& mkdir /opt/micro/h2o
#\
#&& chown -R root /opt/micro \
#&& chmod u=rwx,g=rx /opt/micro \
#&& chown -R root:root /opt/micro
# Configure the JAVA_OPTIONS, you can add -XshowSettings:vm to also display the heap size.
ENV JAVA_OPTIONS="-Dquarkus.http.host=0.0.0.0 -Djava.util.logging.manager=org.jboss.logmanager.LogManager"
WORKDIR /opt/micro
COPY target/lib/* /opt/micro/lib/
COPY target/*-runner.jar /opt/micro/app.jar
EXPOSE 8080
USER root
CMD ["java", "-jar", "/opt/micro/app.jar"]